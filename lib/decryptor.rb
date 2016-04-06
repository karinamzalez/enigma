require './lib/encryptor'

class Decryptor
  attr_reader :characters

  def initialize(key, date, message=nil)
    @rotations = RotationsGenerator.new(key, date).rotations
    @characters = (' '..'z').to_a
  end

  def decrypt(message)
    derotated_message = derotate_message(message)
    simplified_derotation = simplify_derotation(derotated_message)

    a = simplified_derotation.map do |index|
      letter = characters[index]
    end
    a.join("")
  end

  def translate(message)
    message.chars.map do |letter|
      letter = characters.index(letter)
    end
  end

  def derotate_message(message)
    rotations = @rotations
    message_index = translate(message)

   message_index.zip(rotations.cycle).map do |index_rotation|
      index_rotation.inject(:-)
    end
  end

  def simplify_derotation(derotated_message)
    derotated_message.map do |index|
      index% characters.length
    end
  end
end
