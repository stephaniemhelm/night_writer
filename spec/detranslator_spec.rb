require 'rspec'
require './lib/detranslator'
require './lib/english_dictionary'
require './lib/braille_dictionary'


RSpec.describe Detranslator do

  it 'exists' do
    braille =
    "0.0.0.0.0....00.0.0.00
    00.00.0..0..00.0000..0
    ....0.0.0....00.0.0..."
    translated_text = Detranslator.new(braille)
    expect(translated_text).to be_an_instance_of(Detranslator)
  end

  xit 'can detranslate braille to english' do
    braille =
    "0.0.0.0.0....00.0.0.00
    00.00.0..0..00.0000..0
    ....0.0.0....00.0.0..."

    translated_text = Detranslator.new(braille)

    expect(translated_text.braille_to_english).to eq("hello world")
  end

end
