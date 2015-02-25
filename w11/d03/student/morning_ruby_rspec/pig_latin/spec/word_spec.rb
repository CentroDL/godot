require 'spec_helper'
require_relative '../lib/word'

describe "Word" do

  describe '#to_pig' do

    describe 'when word begins with a vowel' do
      it "returns the same word plus 'way' at the end" do
        word = Word.new('egg')
        expect(word.to_pig).to eq('eggway')
      end
    end

    # these tests are pending. remove the X to continue
    xdescribe 'when word begins with one consonant' do
      it "returns the consonant sound plus 'ay' moved to the back" do
        word = Word.new('happy')
        expect(word.to_pig).to eq('appyhay')
      end
    end

    # these tests are pending. remove the X to continue
    xdescribe 'when word begins with multiple consonants' do
      it "returns the consonant sound plus 'ay' moved to the back" do
        word = Word.new('glove')
        expect(word.to_pig).to eq('oveglay')
      end
    end

    # these tests are pending. remove the X to continue
    xdescribe "The letter 'y'" do
      it "can play the role of consonant" do
        word = Word.new("yellow")
        expect(word.to_pig).to eq("ellowyay")
      end
      it "can play the role of vowel" do
        word = Word.new("rhythm")
        expect(word.to_pig).to eq("ythmrhay")
      end
    end

    xdescribe "words starting with 'qu' or 'squ'" do
      it "moves all the letters up to u" do
        word = Word.new("queen")
        expect(word.to_pig).to eq("eenquay")
        word = Word.new("squeal")
        expect(word.to_pig).to eq("ealsquay")
      end
    end

  end #to_pig

end #Word


# Bonus

xdescribe "Word" do
  it 'inherits from String' do
    expect(  Word < String ).to be_true
  end
end
