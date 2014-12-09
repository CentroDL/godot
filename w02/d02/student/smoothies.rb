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
  ingredients.join.delete(' ').split('').shuffle.join
end

current_selection = [ smoothie_ingredients[4], smoothie_ingredients[0], smoothie_ingredients[2]]

puts blend(current_selection)
