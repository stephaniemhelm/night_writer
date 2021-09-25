

input_array = ARGV

string = `cat #{input_array[0]} | wc -m`
characters = string.lstrip.chomp!.to_i

puts "Created #{input_array[1]} containing #{characters} characters"
