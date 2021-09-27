require 'rspec'
require_relative 'translator'
require  'night_writer'
require './lib/english_dictionary'
require './lib/braille_dictionary'


RSpec.describe Translator do

  it 'exists' do
    translated = Translator.new("hello world")

    require "pry"; binding.pry
    expect(translated).to be_an_instance_of(Translator)
  end

  xit 'can load a file' do
    translator = Translator.new(input)
    expect(translator).to eq()
  end

  it 'can output an array' do
    translator = Translator.new(input)
    expect(translator.output_array).to eq([])
  end

  xit 'can sort lines' do

  end

end
