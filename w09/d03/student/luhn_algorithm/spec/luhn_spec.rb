require_relative '../lib/luhn'

describe "Luhn" do

  describe "::valid?" do

    it "is not valid for numbers that don't fit the algorithm" do
      expect(Luhn.valid?(1234567890123456)).to be_falsy
    end

    it "it works for a 16 digit number (visa, mastercard, discover)" do
      expect(Luhn.valid?(4408041234567893)).to be_truthy
    end

    it "it works for a 15 digit number (american express)" do
      expect(Luhn.valid?(342113262828112)).to be_truthy
    end

    it "it works for a 14 digit number (diners club, carte blanche)" do
      expect(Luhn.valid?(38520000023237)).to be_truthy
    end

    it "it works for a 13 digit number (visa)" do
      expect(Luhn.valid?(4222222222222)).to be_truthy
    end

  end

end
