require "./lib/key_generator"

class DateOffsetCalculator
  attr_reader :date

  def initialize(date=(Time.now.strftime"%d%m%y"))
    @date = date
  end

  def date_variable_offsets
    variable_offsets = []
    date = @date.to_i**2
    @date = date.to_s[-4..-1]

    variable_offsets << @date[0].to_i
    variable_offsets << @date[1].to_i
    variable_offsets << @date[2].to_i
    variable_offsets << @date[3].to_i
  end
end
