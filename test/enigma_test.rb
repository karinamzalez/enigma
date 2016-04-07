require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_encrypt_functional
    enigma = Enigma.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    encrypted = enigma.encrypt("hi..end..")

    assert_equal "t%R`q*-`:", encrypted
  end

  def test_decrypt_functional
    enigma = Enigma.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    decrypted = enigma.decrypt("t%R`q*-`:")

    assert_equal "hi..end..", decrypted
  end

  def test_crack_functional
    enigma = Enigma.new("t%R`q*-`:", KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    cracked = enigma.crack

    assert_equal "hi..end..", cracked
  end
end
