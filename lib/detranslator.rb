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

    array = @input.split("\n")
    # first_line = new_array[0]
    # second_line = new_array[1]
    # third_line = new_array[2]

    new_array= array.map do |line|
      line.scan(/../)
    end

    last_array = new_array.transpose

    to_english = last_array.map do |element|
      braille_dictionary[element]
    end.join
    to_english

    # first_line = []
    # second_line = []
    # third_line = []
    #
    # first_line << new_array.shift
    # second_line << new_array.shift
    # third_line << new_array.shift
    #
    # first_line
    # second_line
    # third_line
    #
    # require "pry"; binding.pry
  end


end
