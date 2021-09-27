require 'rspec'
require 'translator'
require  'night_writer'

RSpec.describe Translator do

  xit 'exists' do
    translator = Translator.new(input)
    expect(translator).to be_an_instance_of(Translator)
  end

  xit 'can load a file' do
    translator = Translator.new(input)
    expect(translator).to eq()
  end

  it 'can output an array' do
    translator = Translator.new(input)
    expect(translator.output_array).to eq([])
  end

  it 'can sort lines' do

  end 

end
