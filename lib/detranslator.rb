require './lib/english_dictionary'
require './lib/braille_dictionary'

class Detranslator

  include BrailleDictionary
  include EnglishDictionary

  attr_reader :input

  def initialize(input)
    @input = input.read.strip
    #require "pry"; binding.pry
  end

  def input_array
    array = []
  end

  def split_array

  end 



  def braille_to_english

  end

end
