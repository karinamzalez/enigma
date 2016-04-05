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

  def test_a_offset_outputs_first_of_date_squared
    offset_date = OffsetCalculator.new("080616")
    a_offset = offset_date.square_date("a_offset")

    assert_equal 9, a_offset
  end

  def test_b_offset_outputs_second_of_date_squared
    offset_date = OffsetCalculator.new("140895")
    b_offset = offset_date.square_date("b_offset")

    assert_equal 0, b_offset
  end

  def test_c_offset_outputs_third_of_date_squared
    offset_date = OffsetCalculator.new("190895")
    c_offset = offset_date.square_date("c_offset")

    assert_equal 2, c_offset
  end

  def test_d_offset_outputs_fourth_of_date_squared
    offset_date = OffsetCalculator.new("081616")
    d_offset = offset_date.square_date("d_offset")

    assert_equal 6, d_offset
  end

  def test_not_valid_option_functional
    offset_date = OffsetCalculator.new("081916")
    invalid_offset = offset_date.square_date("p_offset")

    assert_equal "Provide a valid offset, por favor.", invalid_offset
  end

  def test_offset_funtional_for_today_date
    offset_date = OffsetCalculator.new
    a_offset = offset_date.square_date("a_offset")

    assert_equal 3, a_offset
  end
end
