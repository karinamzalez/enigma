class Enigma

  def encrypt(my_message, key=0, date_encrypted=Date.today)
     if key == 0
        key = []
        5.times do
          key << Random.rand(0..9)
      else
        key = key
      end

        #encrypt my_message
        #return encrypted my_message
    end

    def decrypt(output, key, date_encrypted=Date.today)
    end

    def crack(output,date_encrypted=Date.today)
    end



    # def cipher(rotation)
    #   require "pry"; binding.pry
    #   characters = (' '..'z').to_a
    #   rotated_characters = characters.rotate(rotation)
    #   Hash[characters.zip(rotated_characters)]
    # end
    #
    # def encrypt_letter(my_mesage, key, Date.key)
    #   rotation = rotation
    #   cipher_for_rotation = cipher(rotation)
    #   cipher_for_rotation[letter]
    # end
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
