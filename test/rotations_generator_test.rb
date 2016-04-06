require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotations_generator'

class RotaionsGeneratorTest < Minitest::Test

  def test_rotations_generator_outputs_variable_rotations_in_array
    encryptor = RotationsGenerator.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"))
    encryptor_rotations = encryptor.rotations

    assert_equal [12, 23, 36, 50], encryptor_rotations
  end
end
