require "minitest/autorun"
require "minitest/pride"
require "./lib/date_offset_calculator"

class OffsetCalculatorTest < Minitest::Test

  def test_default_date_today_and_in_correct_format
    offset_object = DateOffsetCalculator.new
    offset_date = offset_object.date

    assert_equal "070416", offset_date
  end

  def test_date_variable_offsets_outputs_array_with_last_four_digits_of_date_squared
    offset_object = DateOffsetCalculator.new("081995")
    date_variable_offsets = offset_object.date_variable_offsets

    assert_equal [0, 0, 2, 5], date_variable_offsets
  end

  def test_date_variable_offsets_does_same_with_default_date
    offset_object = DateOffsetCalculator.new
    date_variable_offsets = offset_object.date_variable_offsets

    assert_equal 4, date_variable_offsets.count
  end
end
