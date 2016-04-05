require_relative "./key_generator"

class OffsetCalculator
  attr_accessor :date

  def initialize(date=(Time.now.strftime"%d%m%y"))
    @date = date
  end

  def square_date_only
    @date.to_i**2
  end

  def square_date(x_offset="x_offset")
    date = @date.to_i**2
    @date = date.to_s[-4..-1]
      if x_offset == "a_offset"
        @date[0].to_i
      elsif x_offset == "b_offset"
        @date[1].to_i
      elsif x_offset == "c_offset"
        @date[2].to_i
      elsif x_offset == "d_offset"
        @date[3].to_i
      elsif x_offset == "x_offset"
        @date.to_i
      else
        "Provide a valid offset, por favor."
      end
  end


end

# require "pry"; binding.pry
  # def generate_rotations
  #   a_rotation = [key.a_key - offset_dete.]
  #
  # # # attr_accessor :
  # #date.parse
  # # def initialize("%H:%M:%S")
  # def date
  #   ("%H:%M:%S")**2
  # end
