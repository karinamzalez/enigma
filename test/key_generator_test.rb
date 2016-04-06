require "minitest/autorun"
require "minitest/pride"
require "./lib/key_generator"

class KeyGeneratorTest < Minitest::Test

  def test_key_generates_five_digit_number
    key = KeyGenerator.new
    random_key = key.key
    random_key_rotated = key.a_key

    assert_equal 5, random_key.length
  end

  def test_key_variable_rotations_gives_array
    key = KeyGenerator.new("12345")
    key_variable_rotations = key.key_variable_rotations

    assert_equal [12, 23, 34, 45], key_variable_rotations
  end
end
