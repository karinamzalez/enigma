
#input file
#read file
#parse file
#output file
require "./lib/offset_calculator"

class Encryptor
attr_reader :key, :date

    def initialize(key=KeyGenerator.new, date=OffsetCalculator.new)
      @key = key
      @date = date
    end

  def rotations_generator
    key_variables = @key.key_variable_rotations
    date_variables = @date.date_variable_offsets

    result = key_variables.zip(date_variables).map { |key_date| key_date.inject(:+) }
    return result
  end

#   def cipher(rotation)
#     characters = (' '..'z').to_a
#     rotated_characters = characters.rotate(rotation)
#     Hash[characters.zip(rotated_characters)]
#   end
#
#   def encrypt_letter(my_mesage, key, Date.key)
#     rotation = rotation
#     cipher_for_rotation = cipher(rotation)
#     cipher_for_rotation[letter]
#   end
#
#   # def decrypt_letter(letter)
#   #   lowercase_letter = letter.downcase
#   #   decipher[lowercase_letter]
#   # end
#
#   def encrypt(string)
#     letters = string.split("")
# #firgure out a way to do this with collect method!
#     results = []
#     letters.each do |letter|
#       encrypted_letter = encrypt_letter(letter)
#       results.push(encrypted_letter)
#     end
#     results.join
#   end

  # def decrypt(string)
  #   letters = string.split("")
  #
  #   results = []
  #   letters.each do |letter|
  #     decrypted_letter = decrypt_letter(letter)
  #     results.push(decrypted_letter)
  # end
  #   results.join
  # end

end
