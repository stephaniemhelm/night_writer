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

    new_array= array.map do |line|
      line.scan(/../)
    end

    last_array = new_array.transpose

    to_english = last_array.map do |element|
      braille_dictionary[element]
    end.join

    to_english

  end


end
