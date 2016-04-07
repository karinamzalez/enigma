require_relative 'encryptor'

input = File.read(ARGV[0]).chomp
encryptor = Encryptor.new(KeyGenerator.new("82648"), DateOffsetCalculator.new("030415"))
string = encryptor.encrypt(input)

file = File.new(ARGV[1], "w")
file.write(string)

puts "Created 'encrypted.txt' with the key 82648 and date 030415"
