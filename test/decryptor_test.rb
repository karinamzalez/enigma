require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'

class DecryptorTest < Minitest::Test

  def test_decryptor_default_date_is_today
    decryptor = Decryptor.new(KeyGenerator.new("12345"))
    decryptor_date = decryptor.date

    assert_equal "3056", decryptor_date.date
  end

  def test_translate_outputs_array_of_letter_corresponding_index
    decryptor = Decryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    translated_message = decryptor.translate("yo, you figured it out fam :)")

    assert_equal [89, 79, 12, 0, 89, 79, 85, 0, 70, 73, 71, 85, 82, 69, 68, 0, 73, 84, 0, 79, 85, 84, 0, 70, 65, 77, 0, 26, 9], translated_message
  end

  def test_derotate_message_outputs_decrypted_index_array
    decryptor = Decryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    derotated_message = decryptor.derotate_message("yo, you figured it out fam :)")

    assert_equal [77, 56, -24, -50, 77, 56, 49, -50, 58, 50, 35, 35, 70, 46, 32, -50, 61, 61, -36, 29, 73, 61, -36, 20, 53, 54, -36, -24, -3], derotated_message
  end

  def test_simplify_derotation_outputs_array_of_remainders
    decryptor = Decryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    derotated_message = decryptor.derotate_message("yo, you figured it out fam :)")
    simplified_derotation = decryptor.simplify_derotation(derotated_message)

    assert_equal [77, 56, 67, 41, 77, 56, 49, 41, 58, 50, 35, 35, 70, 46, 32, 41, 61, 61, 55, 29, 73, 61, 55, 20, 53, 54, 55, 67, 88], simplified_derotation
  end

  def test_decrypt_method_outputs_original_message
    dencryptor = Decryptor.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    decrypted_message = dencryptor.decrypt("*+PR*+>Rr%0L#!-Ru0DF&0D=m)Dl5")

    assert_equal "yo, you figured it out fam :)", decrypted_message
  end
end
