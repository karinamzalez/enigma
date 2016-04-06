#input file
#read file
#parse file
#output file
require "./lib/offset_calculator"

class Encryptor

  def initialize(key, date, message)
    @rotations = RotationsGenerator.new(key, date).rotations
    @encrypted_message =
  end

  def encrypt(message)
    message_index = translate(message)
  end

  def translate(message)
    characters = (' '..'z').to_a
    message_array = message.chars
require "pry"; binding.pry
  end

end
