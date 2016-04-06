require './lib/offset_calculator'

class RotationsGenerator
  attr_reader :rotations

      def initialize(key=KeyGenerator.new, date=OffsetCalculator.new)
        @key = key
        @date = date
        @rotations = rotations_generator
      end

    def rotations_generator
      key_variables = @key.key_variable_rotations
      date_variables = @date.date_variable_offsets

      key_variables.zip(date_variables).map { |key_date| key_date.inject(:+) }
    end
  end
