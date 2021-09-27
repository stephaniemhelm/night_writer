require './lib/english_dictionary'
require './lib/braille_dictionary'

require_relative 'detranslator'

input = ARGV[0]
input_file = File.open(ARGV[0], "r")

string = input.length

characters = string.to_i
# string = `cat #{input} | wc -m`
# characters = string.lstrip.chomp!.to_i

output_file = File.open(ARGV[1], "w")

translated_text = Detranslator.new(input_file)

output_file.write(translated_text.braille_to_english)



puts "Created #{input} containing #{characters} characters"
