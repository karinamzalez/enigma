#input file
#read file
#parse file
#output file
require './lib/rotations_generator'

class Encryptor
  attr_reader

  def initialize(key, date, message)
    @rotations = RotationsGenerator.new(key, date).rotations
    @encrypted_message = nil
  end

  def encrypt(message)
    characters = (' '..'z').to_a
    rotated_message = rotate_message(message)
    simplified_rotation = simplify_rotation(rotated_message)

    a = simplified_rotation.map do |index|
      letter = characters[index]
    end
  end

  def simplify_rotation(rotated_message)
    characters = (' '..'z').to_a
    rotated_message.map do |index|
      index% characters.length
    end
  end

  def translate(message)
    characters = (' '..'z').to_a
    message.chars.map do |letter|
      letter = characters.index(letter)
    end

    # message_array.map do |index|
    #   letter = characters[index]
    # end
  end

   def rotate_message(message)
     rotations = @rotations
     message_index = translate(message)

    message_index.zip(rotations.cycle).map do |index_rotation|
       index_rotation.inject(:+)
     end
  end
end
