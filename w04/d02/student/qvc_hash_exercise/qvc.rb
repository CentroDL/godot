require 'pry'

$items = {
  "E-722607" => {
    "name"              => "Telesteps 12.5in Aluminum Telescoping Ladder",
    "quantity"          => 28,
    "descriptives"      => ["lightweight", "incredibly sturdy", "amazing"],
    "manufacturer cost" => 22.50,
    "sell amount"       => 219.96
  },
  "E-440253" => {
    "name"              => "3-Piece Practice Katana Sword Set",
    "quantity"          => 15,
    "descriptives"      => ["sweet", "440 stainless steel", "lightweight", "amazing"],
    "manufacturer cost" => 12.00,
    "sell amount"       => 44.95
  },
  "K-146365" => {
    "name"              => "Kodak EasyShare SMP Digital Camera w/ 4x6 Photo Printer",
    "quantity"          => 53,
    "descriptives"      => ["sweet", "impressive", "Schneider Lens"],
    "manufacturer cost" => 280.75,
    "sell amount"       => 379.95
  },
  "K-716962" => {
    "name"              => "Dell B2360dn Laser Printer",
    "quantity"          => 20,
    "descriptives"      => ["convenient", "impressive", "jet black", "incredibly sturdy"],
    "manufacturer cost" => 220.00,
    "sell amount"       => 289.96
  },
  "K-638750" => {
    "name"              => "Garmin nuvi Series Carry All Case for GPS",
    "quantity"          => 4,
    "descriptives"      => ["jet black", "incredibly sturdy", "lightweight", "rugged"],
    "manufacturer cost" => 8.00,
    "sell amount"       => 17.48
  },
  "J-332418" => {
    "name"              => "Isaac Mizrahi Live! Dip Dye Long Sleeve Sweater Tunic",
    "quantity"          => 31,
    "descriptives"      => ["dramatic", "convenient", "incredibly sturdy"],
    "manufacturer cost" => 18.44,
    "sell amount"       => 44.64
  },
  "Z-388669" => {
    "name"              => "Josie Maran Argan Oil Hand Cream & Body Butter",
    "quantity"          => 33,
    "descriptives"      => ["lightweight", "intensive", "amazing"],
    "manufacturer cost" => 4.05,
    "sell amount"       => 39.96
  },
  "Z-715401" => {
    "name"              => "Hummingbird Pretty Pattern Readers 1-2.5 Strength Set of 6",
    "quantity"          => 30,
    "descriptives"      => ["colorful", "lightweight", "sensational", "stylish"],
    "manufacturer cost" => 10.00,
    "sell amount"       => 39.99
  },
  "A-788346" => {
    "name"              => "Cryotex 3-Piece Cryogenically Treated Knife Set",
    "quantity"          => 74,
    "descriptives"      => ["440 stainless steel", "lightweight", "outstanding"],
    "manufacturer cost" => 12.00,
    "sell amount"       => 44.95
  },
  "A-651843" => {
    "name"              => "Shumway Complete Sword Set",
    "quantity"          => 2,
    "descriptives"      => ["sweet", "fantastic", "amazing", "outstanding"],
    "manufacturer cost" => 72.95,
    "sell amount"       => 219.96
  },
  "P-889183" => {
    "name"              => "Countess Madeleine Dome Ring",
    "quantity"          => 500,
    "descriptives"      => ["beautiful", "future heirloom", "fantastic"],
    "manufacturer cost" => 3.50,
    "sell amount"       => 29.95
  },
  "P-868801" => {
    "name"              => "Graziela Gems Gemstone & White Zircon Sterling Ring",
    "quantity"          => 48,
    "descriptives"      => ["twinkling", "sterling silver", "beautiful", "gorgeous"],
    "manufacturer cost" => 50.12,
    "sell amount"       => 344.00
  },
  "P-463134" => {
    "name"              => "Ecclissi Facets Rhodolite Garnet Leather Strap Stainless Watch, 5.40cttw",
    "quantity"          => 12,
    "descriptives"      => ["striking", "lofty", "spectacular", "gorgeous", "stylish"],
    "manufacturer cost" => 60.50,
    "sell amount"       => 342.44
  }
}

$jewelry = {
  "P-117000" => {
    "name"              => "Sleeping Beauty Turquoise Sterling Cross Pendant with 24in Chain",
    "quantity"          => 822,
    "descriptives"      => ["sterling silver", "delicate grace", "beautiful"],
    "manufacturer cost" => 5.00,
    "sell amount"       => 249.56
  },
  "P-691497" => {
    "name"              => "Mozambique Garnet Multi-Cut Sterling Silver Ring, 2.55 cttw",
    "quantity"          => 50,
    "descriptives"      => ["marvelous", "phenomenal", "sterling silver", "breathtaking"],
    "manufacturer cost" => 1.80,
    "sell amount"       => 99.75
  }
}

$profit=0

$items.merge!($jewelry)

def item_names
  $items.map { |k,x| x["name"] }
end

def item_margins
  $items.map { |k, v| ((v["sell amount"] - v["manufacturer cost"])/ v["sell amount"]).round(2) }
end

def item_margins_and_names
  item_names.zip(item_margins).to_h
end

def decrement(id)
  $items[id]["quantity"] -= 1

end

binding.pry
