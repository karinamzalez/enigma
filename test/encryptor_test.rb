require "minitest/autorun"
require "minitest/pride"
require "./lib/encryptor.rb"

class EncryptorTest < Minitest::Test

  def test_encryptor_is_initialized_with_default_date_and_key
    encryptor = Encryptor.new
    encryptor_date = encryptor.date
    encryptor_key = encryptor.key

    assert_equal "3056", encryptor_date.date
    assert_equal 5, encryptor_key.key.length
  end

  def test_translate_method_outputs_letter_corresponding_index_in_array
    encryptor = Encryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    translated_message = encryptor.translate("yo, you figured it out fam :)")

    assert_equal [89, 79, 12, 0, 89, 79, 85, 0, 70, 73, 71, 85, 82, 69, 68, 0, 73, 84, 0, 79, 85, 84, 0, 70, 65, 77, 0, 26, 9], translated_message
  end

  def test_rotate_message_method_adds_rotation_to_index_array
    encryptor = Encryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    rotated_message = encryptor.rotate_message("yo, you figured it out fam :)")

    assert_equal [101, 102, 48, 50, 101, 102, 121, 50, 82, 96, 107, 135, 94, 92, 104, 50, 85, 107, 36, 129, 97, 107, 36, 120, 77, 100, 36, 76, 21], rotated_message
  end

  def test_simplify_rotation_returns_array_with_remainders
    encryptor = Encryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    rotated_message = encryptor.rotate_message("yo, you figured it out, fam :)")
    simplified_rotation = encryptor.simplify_rotation(rotated_message)

    assert_equal [10, 11, 48, 50, 10, 11, 30, 50, 82, 5, 16, 44, 3, 1, 13, 50, 85, 16, 36, 38, 6, 16, 48, 50, 82, 88, 22, 50, 38, 32], simplified_rotation
  end

  def test_encrypt_outputs_characters_corresponding_to_new_letters
      encryptor = Encryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
      encrypted_message = encryptor.encrypt("yo, you figured it out fam :)")

      assert_equal "*+PR*+>Rr%0L#!-Ru0DF&0D=m)Dl5", encrypted_message
  end
end
