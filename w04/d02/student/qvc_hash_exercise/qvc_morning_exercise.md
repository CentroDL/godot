# QVC Shenanigans

![Fire Sale](img/qvc.jpg)

> *It's all fun and games, until it's a serious problem.*

## Data Sets

Most of the problems below refer to the `items` Hash. Each item in that
Hash has an **id** as its key, and another Hash as its value. The item value
Hash has the keys:

- **name**
- **quantity**
- (overwrought) **descriptives**
- **manufacturer cost** (the cost QVC paid for the item)
- **sell amount** (the amount that QVC sels the item for)

You can calculate the (gross) **margin** by taking the percentage of the sale
value of an item that is profit. Ie:

```
margin = (sell_amount - manufacturer_cost) / sell_amount
```

```ruby
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
```

## Problems

**0) Merge the jewelry list into the items list.**

Note: see [Hash#merge][hashmerge] for a simple option.

**1) Write a method `item_names` that returns an array of the names of all of
     the items. Example:**

```ruby
item_names
#=> [
#=>   "Telesteps 12.5in Aluminum Telescoping Ladder",
#=>   "3-Piece Practice Katana Set",
#=>   ...
#=>   "Shumway Complete Sword Set"
#=> ]
```

**2) Write a method `item_margins` that returns an array of the margins of all of
     the items. Example:**

```ruby
item_margins
#=> [
#=>   0.897708674304419,
#=>   0.7330367074527253,
#=>   ...
#=>   0.6683487906892162
#=> ]
```

**3) Write a method `item_margins_and_names` that returns a Hash of all of the
     items where the name is the key, and the margin is the value. Example:**

```ruby
item_margins_and_names
#=> {
#=>   "Telesteps 12.5in Aluminum Telescoping Ladder"=>0.897708674304419,
#=>   "3-Piece Practice Katana Set"=>0.7330367074527253,
#=>   ...
#=>   "Shumway Complete Sword Set"=>0.6683487906892162
#=> }
```

Note: see [Array#to_h][arraytoh] for a simple method.

**4) Write a method `decrement(id)` that takes an item's id and decrements the
     quantity.**

**5) Change the method `decrement(id)` tho add the profit from each sale to a
     `$profit` variable.**

**6) There's a sale for all swords and knives! Select all the items with
     `"Sword"` or `"Knife"` from the `$items` list. Then edit each one so that
     the new sell amount is only double what the manufacturer cost is!**

**7) Iterate over the list of items and add the id (key) to each item's Hash.**

**8) Iterate over the list of items and add the following key-value pairs to
     each item in the list:**

```ruby
{
  "sold"         => 0,
  "channel"      => "QVC",
  "Manufactured" => "China"
}
```

**9) Write a method `average_sell_amount` that returns the average sell amount
     of all the items.**

**10) Write a method `median_sell_amount` that returns the
      [median](http://simple.wikipedia.org/wiki/Median) sell amount of all of
      the items.

**11) Create an Array of every descriptive in the item list; make sure that the
      Array is unique, or only has each value once.**

**12) Create an Array of pitches: each pitch is structured like this:**

Given the item:

```ruby
{
  "name"              => "Countess Madeleine Dome Ring",
  "quantity"          => 500,
  "descriptives"      => ["beautiful", "future heirloom", "fantastic"],
  "manufacturer cost" => 3.50,
  "sell amount"       => 29.95
}
```

... the pitch would be:

```
"Buy now! There are only 500 left of the beautiful, future heirloom, fantastic,
Countess Madeleine Dome Rings. At only $29.95, they are a steal!"
```

**13) Write a method `pitch(id)` that returns a pitch for a given id in the item
      list.**

[hashmerge]: http://www.ruby-doc.org/core-2.1.5/Hash.html#method-i-merge "Hash#merge"
[arraytoh]:  http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-to_h "Array#to_h"
