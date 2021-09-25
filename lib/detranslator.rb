require './lib/english_dictionary'
require './lib/braille_dictionary'

class Detranslator

  include BrailleDictionary
  include EnglishDictionary


end
