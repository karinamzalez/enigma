#encryptor takes in your readable data, and masks it.. same machine then takes masked data and turns it back into readable test:
#input file
#read file
#parse file
#output file

class Encryptor


  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def decipher
    {'p' => 'a', 'f' => 'i', 'b' => 'k', 'o' => 'n', 'v' => 'r'}
  end

  def encrypt_letter(my_mesage, key, Date.key)
    rotation = rotation
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def decrypt_letter(letter)
    lowercase_letter = letter.downcase
    decipher[lowercase_letter]
  end

  def encrypt(string)
    letters = string.split("")
#firgure out a way to do this with collect method!
    results = []
    letters.each do |letter|
      encrypted_letter = encrypt_letter(letter)
      results.push(encrypted_letter)
    end
    results.join
  end

  def decrypt(string)
    letters = string.split("")

    results = []
    letters.each do |letter|
      decrypted_letter = decrypt_letter(letter)
      results.push(decrypted_letter)
  end
    results.join
  end

end
