require './lib/rotations_generator'

class Encryptor
  attr_reader :characters, :date, :key

  def initialize(key=KeyGenerator.new, date=DateOffsetCalculator.new)
    @date = date
    @key = key
    @rotations = RotationsGenerator.new(key, date).rotations
    @characters = (' '..'z').to_a
  end

  def encrypt(message)
    rotated_message = rotate_message(message)
    simplified_rotation = simplify_rotation(rotated_message)

    a = simplified_rotation.map do |index|
      letter = characters[index]
    end
      a.join("")
  end

  def translate(message)
    message.chars.map do |letter|
      letter = characters.index(letter)
    end
  end

   def rotate_message(message)
     rotations = @rotations
     message_index = translate(message)

    message_index.zip(rotations.cycle).map do |index_rotation|
       index_rotation.inject(:+)
     end
  end

  def simplify_rotation(rotated_message)
    rotated_message.map do |index|
      index% characters.length
    end
  end
end
