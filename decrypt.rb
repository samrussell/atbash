# Usage: ruby decrypt.rb oephjizkxdawubnytvfglqsrcm "knlfgnb, sj koqj o yvnewju"

require './lib/crypter'

cipher, encrypted_text = ARGV

crypter = Crypter.new(cipher: cipher)

puts "Original text: #{crypter.decrypt(encrypted_text)}"