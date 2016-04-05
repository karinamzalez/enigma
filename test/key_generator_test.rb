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

  def test_a_key_is_first_two_digits
    key = KeyGenerator.new("12345")
    key_a = key.a_key

    assert_equal 12, key_a
  end

  def test_b_key_is_index_1_and_index_2
    key = KeyGenerator.new("12345")
    key_b = key.b_key

    assert_equal 23, key_b
  end

  def test_c_key_is_index_2_and_index_3
    key = KeyGenerator.new("12345")
    key_c = key.c_key

    assert_equal 34, key_c
  end

  def test_d_key_is_index_3_and_4
    key = KeyGenerator.new("12345")
    key_d = key.d_key

    assert_equal 45, key_d
  end
end
