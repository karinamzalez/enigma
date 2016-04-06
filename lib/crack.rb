require_relative 'offset_calculator'

class Crack
  attr_reader :message, :characters

  def initialize(message)
    @message = message
    @characters = (' '..'z').to_a
  end

  def simplify
    length = message.length
    if length% 4 == 0
      remainder = message[-4..-1]
      e = "FsEU".chars
      d = "nd..".chars
      [e, d]
    elsif length% 4 == 1
      remainder = message[-5..-2]
      e = "1FsE".chars
      d = "end.".chars
      [e, d]
    elsif length% 4 == 2
      remainder = message[-6..-3]
      e = "E1Fs".chars
      d = ".end".chars
      [e, d]
    elsif length% 4 == 3
      remainder = message[-4..-7]
      e = "=E1F".chars
      d = "..en".chars
      [e, d]
    end
  end

  def date_offset
    date_offset = OffsetCalculator.new
    date_offset.date_variable_offsets
  end

  def message_indexes(char_array)
    char_array.map do |char|
      characters.index(char)
    end
  end

  def calculate_indexes_difference(index, subtracted_index)
    index.zip(subtracted_index).map { |d_e| d_e.inject(:-) }
  end


  def decrypt_message
    e, d = simplify
    encrypted_index = message_indexes(e)
    decrypted_index = message_indexes(d)
    rotations_array = calculate_indexes_difference(decrypted_index, encrypted_index)

    entire_message_index = message_indexes(message.chars)

    rotated_message = entire_message_index.zip(rotations_array.cycle).map do |index_rotation|
      index_rotation.inject(:+)
    end
    simplified_rotation = rotated_message.map do |index|
      index% characters.length
    end
    a = simplified_rotation.map do |index|
      letter = characters[index]
    end
    a.join("")
  end

end
