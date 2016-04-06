require "minitest/autorun"
require "minitest/pride"
require "./lib/encryptor.rb"

class EncryptorTest < Minitest::Test

  def test_translate_method_outputs_letter_respective_index_in_array
    encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"), "yo, u figured it out fam :)")
    translated_message = encryptor.translate("yo, you figured it out fam :)")

    assert_equal [89, 79, 12, 0, 89, 79, 85, 0, 70, 73, 71, 85, 82, 69, 68, 0, 73, 84, 0, 79, 85, 84, 0, 70, 65, 77, 0, 26, 9], translated_message
  end

  def test_rotate_message_method_adds_rotation_to_index
    encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"), "yo, u figured it out fam :)")
    rotated_message = encryptor.rotate_message("yo, you figured it out fam :)")

    assert_equal [101, 102, 48, 50, 101, 102, 121, 50, 82, 96, 107, 135, 94, 92, 104, 50, 85, 107, 36, 129, 97, 107, 36, 120, 77, 100, 36, 76, 21], rotated_message
  end

  def test_untranslate_outputs_characters_corresponding_to_new_indexes
      encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"), "yo, u figured it out fam :)")

      encrypted_message = encryptor.encrypt("yo, you figured it out fam :)")
      assert_equal ["*", "+", "P", "R", "*", "+", ">", "R", "r", "%", "0", "L", "#", "!", "-", "R", "u", "0", "D", "F",
        "&", "0", "D", "=", "m", ")", "D", "l", "5"], encrypted_message
  end

end
