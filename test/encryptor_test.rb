require "minitest/autorun"
require "minitest/pride"
require "./lib/encryptor.rb"

class EncryptorTest < Minitest::Test

  def test_rotations_generator_outputs_variable_rotations_in_array
    encryptor = Encryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"))
    encryptor_rotations = encryptor.rotations_generator

    assert_equal [12, 23, 36, 50], encryptor_rotations
  end

  def 
end
