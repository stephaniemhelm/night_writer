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

    require "pry"; binding.pry
    @input.map do |characters|

      require "pry"; binding.pry
    end
  end
end
