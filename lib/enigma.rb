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

end
