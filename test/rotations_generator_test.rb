require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotations_generator'

class RotaionsGeneratorTest < Minitest::Test

    def initialize(key=KeyGenerator.new, date=OffsetCalculator.new)
      @key = key
      @date = date
    end

  def rotations_generator
    key_variables = @key.key_variable_rotations
    date_variables = @date.date_variable_offsets

    key_variables.zip(date_variables).map { |key_date| key_date.inject(:+) }
  end
end
