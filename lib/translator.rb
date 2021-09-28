require './lib/english_dictionary'
require './lib/braille_dictionary'

class Translator

  include BrailleDictionary
  include EnglishDictionary

  attr_reader :input

  def initialize(input)
    @input = input
  end


  def output_array
    output_array = input.chars.map do |char|
      english_dictionary[char]
    end.flatten
  end

  def sort_lines
    first_line = []
    second_line = []
    third_line = []

    output_array.each_with_index do |element, index|

      if (index + 1) % 3 == 0
        third_line << element
      elsif (index + 1) % 3 == 1
        first_line << element
      else
        second_line << element
      end
    end
    [first_line, second_line, third_line]

  end


  def english_to_braille

    clean_first_line = sort_lines[0].to_s.gsub(/[^0.]/, "")
    clean_second_line = sort_lines[1].to_s.gsub(/[^0.]/, "")
    clean_third_line = sort_lines[2].to_s.gsub(/[^0.]/, "")

    new_array = "#{clean_first_line} \n" "#{clean_second_line}\n" "#{clean_third_line}\n"

  end

end
