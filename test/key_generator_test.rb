require "minitest/autorun"
require "minitest/pride"
require "./lib/key_generator"

class KeyGeneratorTest < Minitest::Test

  def test_key_generates_five_digit_number
    key = KeyGenerator.new
    random_key = key.key
    random_key_rotated = key.a_rotation

    assert_equal 5, random_key.length
    assert_equal 2, random_key_rotated.length
  end

  def test_a_rotation_is_first_two_digits
    key = KeyGenerator.new("12345")
    key_rotated_a = key.a_rotation
    
    assert_equal "12", key_rotated_a
    assert_equal 2, key_rotated_a.length
  end

  def test_b_rotation_is_index_1_and_index_2
    key = KeyGenerator.new("12345")
    key_rotated_b = key.b_rotation

    assert_equal "23", key_rotated_b
    assert_equal 2, key_rotated_b.length
  end

  def test_c_rotation_is_index_2_and_index_3
    key = KeyGenerator.new("12345")
    key_rotated_c = key.c_rotation

    assert_equal "34", key_rotated_c
    assert_equal 2, key_rotated_c.length
  end

  def test_d_rotation_is_index_3_and_4
    key = KeyGenerator.new("12345")
    key_rotated_d = key.d_rotation

    assert_equal "45", key_rotated_d
    assert_equal 2, key_rotated_d.length
  end
end
