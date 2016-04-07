require_relative 'decryptor'

input = File.read(ARGV[0]).chomp
decryptor = Decryptor.new(KeyGenerator.new("#{ARGV[2]}"), DateOffsetCalculator.new("#{ARGV[3]}"))
string = decryptor.decrypt(input)

file = File.new(ARGV[1], "w")
file.write(string)

puts "Created 'decrypted.txt' with the key #{ARGV[2]} and date #{ARGV[3]}"
