require "minitest/autorun"
require "minitest/pride"
require "./lib/encryptor.rb"

class EncryptorTest < Minitest::Test


  # def test_cipher
  #   encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"))
  #   encryptor_rotations = encryptor.rotations_generator
  #
  #   assert_equal nil, encryptor_rotations.cipher
  # end
end
