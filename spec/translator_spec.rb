require 'rspec'
require './lib/translator'
require './lib/english_dictionary'
require './lib/braille_dictionary'


RSpec.describe Translator do

  it 'exists' do
    translated = Translator.new("hello world")
    expect(translated).to be_an_instance_of(Translator)
  end

  it 'can output an array' do
    translator = Translator.new("hello world")
    expect(translator.output_array).to eq([])
  end

  xit 'can sort lines' do

  end

end
