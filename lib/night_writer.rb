require './lib/english_dictionary'
require './lib/braille_dictionary'

require_relative 'translator'

input = ARGV[0]
input_file = File.open(ARGV[0], "r")

# string = input.count
#
# characters = string.to_i

string = `cat #{input} | wc -m`
characters = string.lstrip.chomp!.to_i

output_file = File.open(ARGV[1], "w")

translated_text = Translator.new(input_file)

output_file.write(translated_text.english_to_braille)

puts "Created 'message.txt' containing #{characters} characters"

# help from Dani
# output_file = File.open(ARGV[1], "w")
# translated_text = Translator.new
#
# output_file.write(translated_text(input_file).english_to_braille)
