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
    translator = Translator.new("hello")
    expect(translator.output_array).to eq(["0.", "00", "..", "0.", ".0", "..", "0.", "0.", "0.", "0.", "0.", "0.", "0.", ".0", "0."])
  end

  xit 'can sort lines' do
    translator = Translator.new("hello world")
    first_line = "0.0.0.0.0....00.0.0.00"
    second_line = "00.00.0..0..00.0000..0"
    third_line = "....0.0.0....00.0.0..."

    expect(translator.sort_lines).to eq([first_line, second_line, third_line])
  end

  xit 'can translate english to braille' do
    translator = Translator.new("hello world")

    result =
    "0.0.0.0.0....00.0.0.00
    00.00.0..0..00.0000..0
    ....0.0.0....00.0.0..."
    expect(translator.english_to_braille).to eq(result)

  end

end
