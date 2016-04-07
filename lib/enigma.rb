require_relative 'encryptor'
require_relative 'decryptor'
require_relative 'cracked'

class Enigma
attr_reader :key, :date, :message

  def initialize(message=nil, key, date)
    @key = key
    @date = date
    @message = message
  end

  def encrypt(message)
    encryptor = Encryptor.new(key, date)
      encryptor.encrypt(message)
  end
    #
  def decrypt(message)
    decryptor = Decryptor.new(key, date)
      decryptor.decrypt(message)
  end

  def crack
    cracked = Cracked.new(message)
    cracked.decrypt_message
  end

end
