require_relative 'translator'

input = ARGV[0]
input_file = File.open(ARGV[0], "r")

string = input.length

characters = string.to_i

output_file = File.open(ARGV[1], "w")

translated_text = Translator.new(input_file)

output_file.write(translated_text.english_to_braille)

puts "Created #{input} containing #{characters} characters"

# help from Dani
# output_file = File.open(ARGV[1], "w")
# translated_text = Translator.new
#
# output_file.write(translated_text(input_file).english_to_braille)
