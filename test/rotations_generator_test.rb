require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotations_generator'

class RotaionsGeneratorTest < Minitest::Test

  def test_default_key_is_randomly_generated
    rotations_object = RotationsGenerator.new
    rotations_key = rotations_object.key

    assert_equal 5, rotations_key.key.length
  end

  def test_key_variable_rotations_functional_in_this_class
    rotations_object = RotationsGenerator.new
    rotations_key = rotations_object.key

    assert_equal 4, rotations_key.key_variable_rotations.count
  end

  def test_default_date_variables_derived_from_today_date
    rotations_object = RotationsGenerator.new
    rotations_date = rotations_object.date

    assert_equal "3056", rotations_date.date
  end

  def test_rotations_generator_outputs_variable_rotations_in_array
    rotations_object = RotationsGenerator.new(KeyGenerator.new("12345"), DateOffsetCalculator.new("081995"))
    rotations = rotations_object.rotations

    assert_equal [12, 23, 36, 50], rotations
  end

  def test_rotations_generator_outputs_variable_rotations_in_array_for_defaults
    rotations_object = RotationsGenerator.new
    rotations = rotations_object.rotations

    assert_equal 4, rotations.count
  end
end
