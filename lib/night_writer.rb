require_relative 'translator'

input = ARGV[0]
input_file = File.open(ARGV[0], "r")


string = `cat #{input} | wc -m`
characters = string.lstrip.chomp!.to_i

output_file = File.open(ARGV[1], "w")

translated_text = Translator.new(input_file)

output_file.write(translated_text.english_to_braille)



puts "Created #{input[1]} containing #{characters} characters"
