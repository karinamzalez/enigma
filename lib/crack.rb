require_relative 'cracked'

input = File.read(ARGV[0]).chomp
cracked = Cracked.new(input)
string = cracked.decrypt_message

file = File.new(ARGV[1], "w")
file.write(string)

puts "Created 'cracked.txt' with the key 82648 and date #{ARGV[2]}"
