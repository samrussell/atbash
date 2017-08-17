require 'spec_helper'
require 'crypter'

RSpec.describe Crypter do
  let(:crypter) { Crypter.new(cipher: cipher) }

  context "with only alphabetical chars" do
    let(:cipher) { 'zodvqukgwefbyitmrsplhacxnj' }
    let(:encrypted_text) { 'dzs' }
    let(:original_text) { 'car' }

    it "encrypts correctly" do
      expect(crypter.encrypt(original_text)).to eq(encrypted_text)
    end

    it "decrypts correctly" do
      expect(crypter.decrypt(encrypted_text)).to eq(original_text)
    end
  end

  context "with extra non-alphabetical chars" do
    let(:cipher) { 'xipmuzfkbrlwotjancqgveshdy' }
    let(:encrypted_text) { 'skd qj qucbjvq?' }
    let(:original_text) { 'why so serious?' }

    it "encrypts correctly" do
      expect(crypter.encrypt(original_text)).to eq(encrypted_text)
    end

    it "decrypts correctly" do
      expect(crypter.decrypt(encrypted_text)).to eq(original_text)
    end
  end
end