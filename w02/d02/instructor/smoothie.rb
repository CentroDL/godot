require 'pry'

smoothie_ingredients = [
  'flax seeds',
  'chia seeds',
  'coconut flakes',
  'spirulina',
  'pumpkin seeds',
  'oatmeal',
  'coco powder',
  'peanut butter',
  'almonds',
  'walnuts',
  'spinach',
  'greek yogurt',
  'nutrional yeast',
  'brussel sprouts',
  'asparagus',
  'kale',
  'brocoli rabe',
  'blue berries',
  'chopped banana',
  'straw berries',
  'mango',
  'hemp milk'
]

def blend(ingredients)
  # this array lives and dies inside this method
  mixed_ingredients = []

  ingredients.each do |ingredient|
      # each ingredient will be referred to in the block as "ingredient"
     # string => new string => new array => new array => new string
    mixed_up_string = ingredient.delete(" ").split("").shuffle.join
    mixed_ingredients.push(mixed_up_string)
  end # end of the block

  mixed_ingredients.join # turn it into a string and returned.
end # end of the method

blended_smoothie = blend(smoothie_ingredients) # this returns the mixed_ingredients.join

$stdout.puts(blended_smoothie)







