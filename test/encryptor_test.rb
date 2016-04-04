require "minitest/autorun"
require "minitest/pride"
require "./lib/encryptor.rb"

class EncryptorTest < Minitest::Test

  def test_encrypt_letter_usage_of_cipher_functional
    e = Encryptor.new

    assert_equal "$", e.encrypt_letter("r")
    assert_equal "b", e.encrypt_letter("a",1)
  end

  #
  # def test_encrypt_string_functional
  #   e = Encryptor.new
  #
  #   assert_equal "Xn$v n", e.encrypt("Karina")
  # end
  # #
  # def test_decrpt_method_functional
  #   e = Encryptor.new
  #
  #   assert_equal "karina", e.decrypt("bpvfop")
  # end

end
