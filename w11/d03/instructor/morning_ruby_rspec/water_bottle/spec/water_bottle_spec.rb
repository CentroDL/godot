require_relative '../lib/water_bottle'

describe "WaterBottle" do

  describe ".new" do

    it "sets capacity and brand" do
      wb = WaterBottle.new("Mudd", 16)
      expect( wb.capacity ).to eq 16
      expect( wb.brand ).to eq "Mudd"
    end

    it "is empty" do
      wb = WaterBottle.new("Lake Eerie", 16)
      expect( wb ).to be_empty
    end

  end

  describe "#fill" do

    it "can be filled" do
      wb = WaterBottle.new("Haterade", 16)
      wb.fill
      expect(wb).not_to be_empty
    end
  end

  describe "#measure" do

    it "returns the amount left in a bottle" do
      wb1 = WaterBottle.new("Chardonnade", 16)
      wb2 = WaterBottle.new("Chardonnade", 8)
      expect(wb1.measure).to eq(0)
      expect(wb2.measure).to eq(0)
      wb1.fill
      wb2.fill
      expect(wb1.measure).to eq(16)
      expect(wb2.measure).to eq(8)
    end

  end

  describe "#squirt" do

    it "removes 4 units at a time." do
      wb = WaterBottle.new("Coke Lite", 8)
      wb.fill
      amount = wb.squirt
      expect( amount ).to eq(4)
      expect( wb.measure ).to eq(4)
    end

    it "cannot be squirted if empty" do
      wb = WaterBottle.new("Bru's Bru", 20)
      wb.fill
      5.times { wb.squirt }
      expect(wb).to be_empty
      expect(wb.squirt).to eq(false)
    end

  end

  describe "#to_json" do

    it "returns a string" do
      wb = WaterBottle.new("Off-Brand", 10)
      expect(wb.to_json.class).to eq(String)
    end

    it "returns a parsible JSON string" do
      wb = WaterBottle.new("n/a", 10)
      json_string = wb.to_json
      object = JSON.parse(json_string)
      expect(object["brand"]).to eq("n/a")
    end

  end

end
