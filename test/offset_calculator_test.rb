require "minitest/autorun"
require "minitest/pride"
require "./lib/offset_calculator"

class OffsetCalculatorTest < Minitest::Test

  def test_date_in_correct_format
    offset_value = OffsetCalculator.new
    offset_date = offset_value.date

    assert_equal "050416", offset_date
  end

  def test_squre_date_only_functional
   offset_value = OffsetCalculator.new
   offset_date = offset_value.date
   offset_date_squared_only = offset_value.square_date_only

   assert_equal 2541773056, offset_date_squared_only
  end

  def test_square_date_output_last_four_digits
    offset_value = OffsetCalculator.new
    offset_date = offset_value.date
    offset_date_squared = offset_value.square_date

    assert_equal 3056, offset_date_squared
  end

  def test_date_variable_offsets
    offset_date = OffsetCalculator.new("081995")
    date_variable_offsets = offset_date.date_variable_offsets

    assert_equal [0, 0, 2, 5], date_variable_offsets
  end

end
