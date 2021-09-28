require './lib/english_dictionary'
require './lib/braille_dictionary'

class Detranslator

  include BrailleDictionary
  include EnglishDictionary

  attr_reader :input

  def initialize(input)
    @input = input.read.strip
  end

  def braille_to_english
    new_array = @input.split("\n")

    first_line = []
    second_line = []
    third_line = []

    first_line << new_array.shift.each_slice(2)
    second_line << new_array.shift
    third_line << new_array.shift


    first_line
    second_line
    third_line
    require "pry"; binding.pry

  end
end
