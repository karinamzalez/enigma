require_relative 'encryptor'
require_relative 'decryptor'
require_relative 'crack'

class Enigma

  def encrypt(message, key=KeyGenerator.new, date=DateOffsetCalculator.new)
    encryptor = Encryptor.new(key, date)
    encryptor.encrypt(message)
  end

    def decrypt(message)
    end

    def crack(message)
    end

end
