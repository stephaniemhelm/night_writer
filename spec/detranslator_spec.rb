require 'rspec'
require './lib/detranslator'
require './lib/english_dictionary'
require './lib/braille_dictionary'


RSpec.describe Detranslator do

  xit 'exists' do
    translated_text = Detranslator.new(input_file)
    expect(translated_text).to be_an_instance_of(Detranslator)
  end


end
