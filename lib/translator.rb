require './lib/english_dictionary'
require './lib/braille_dictionary'

class Translator

  include BrailleDictionary
  include EnglishDictionary


end
