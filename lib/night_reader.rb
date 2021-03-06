require './lib/english_dictionary'
require './lib/braille_dictionary'

require_relative 'detranslator'

input = (ARGV[0]).read.strip
input_file = File.open(ARGV[0], "r")

string = `cat #{input} | wc -m`
characters = string.lstrip.chomp!.to_i

output_file = File.open(ARGV[1], "w")

translated_text = Detranslator.new(input_file)

output_file.write(translated_text.braille_to_english)

puts "Created 'braille.txt' containing #{characters} characters"
