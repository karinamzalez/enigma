require "minitest/autorun"
require "minitest/pride"
require "./lib/encryptor.rb"

class EncryptorTest < Minitest::Test

  def test_translate_method_outputs_letter_respective_index_in_array
    encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"), "yo, u figured it out fam")
    translated_message = encryptor.translate("yo, you figured it out fam")

    assert_equal [24, 14, 38, 36, 24, 14, 20, 36, 5, 8, 6, 20, 17, 4, 3, 36, 8, 19, 36, 14, 20, 19, 36, 5, 0, 12], translated_message
  end

  def test_rotate_message_method_adds_rotation_to_index
    encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"), "yo, u figured it out fam")
    rotated_message = encryptor.rotate_message("yo, you figured it out fam")

    assert_equal [36, 37, 74, 86, 36, 37, 56, 86, 17, 31, 42, 70, 29, 27, 39, 86, 20, 42, 72, 64, 32, 42, 72, 55, 12, 35], rotated_message
  end

  def test_untranslate_outputs_characters_corresponding_to_new_indexes
      encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"), "yo, u figured it out fam")
      encrypted_message = encryptor.encrypt("yo, you figured it out fam")

      assert_equal " .9i .rir5d531aiud7z6d7qm9", encrypted_message
  end

end
