class Crypter
  CONSTANT = 'abcdefghijklmnopqrstuvwxyz'

  def initialize(cipher:)
    @cipher = cipher
  end

  def encrypt(original_text)
    original_text.chars.map { |char| original_to_encrypted[char] || char }.join
  end

  def decrypt(encrypted_text)
    encrypted_text.chars.map { |char| encrypted_to_original[char] || char }.join
  end

private

  def original_to_encrypted
    @original_to_encrypted ||= CONSTANT.chars.zip(@cipher.chars.zip).to_h
  end

  def encrypted_to_original
    @encrypted_to_original ||= @cipher.chars.zip(CONSTANT.chars.zip).to_h
  end
end