# smoothie_ingredients = [
#   'flax seeds',
#   'chia seeds',
#   'coconut flakes',
#   'spirulina',
#   'pumpkin seeds',
#   'oatmeal',
#   'coco powder',
#   'peanut butter',
#   'almonds',
#   'walnuts',
#   'spinach',
#   'greek yogurt',
#   'nutrional yeast',
#   'brussel sprouts',
#   'asparagus',
#   'kale',
#   'brocoli rabe',
#   'blue berries',
#   'chopped banana',
#   'straw berries',
#   'mango',
#   'hemp milk'
# ]

# def blend (ingredients)
#   mixed_ingredients = []

#   ingredients.each do |ingredients|
#     mixed_up = ingredients.delete(' ').split('').shuffle.join
#     mixed_ingredients.push(mixed_up)
#   end

#   mixed_ingredients.join
# end

# blended_smoothie = blend(smoothie_ingredients)
# $stdout.puts(blended_smoothie)

# /////////////////////////////////////////////
# /////////////////////////////////////////////

smoothie_ingredients = {
  'flax seeds'      => '1 tbsp',
  'chia seeds'      => '1 tbsp',
  'coconut flakes'  => '1 tbsp',
  'spirulina'       => '1 tsp',
  'pumpkin seeds'   => '1 tbsp',
  'oatmeal'         => '0.25 cup',
  'coco powder'     => '1 tbsp',
  'peanut butter'   => '1 tbsp',
  'almonds'         => '0.25 cup',
  'walnuts'         => '0.25 cup',
  'spinach'         => '0.25 cup',
  'greek yogurt'    => '0.25 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '0.25 cup',
  'asparagus'       => '0.25 cup',
  'kale'            => '0.25 cup',
  'brocoli rabe'    => '0.25 cup',
  'blue berries'    => '0.25 cup',
  'chopped banana'  => '0.5 cup',
  'straw berries'   => '0.25 cup',
  'mango'           => '0.25 cup',
  'hemp milk'       => '1 cup'
}

def making_hash_smoothie(smoothie_ingredients)
  ingredients = smoothie_ingredients.keys
  blend = ingredients.join.split('').shuffle.join.gsub(' ','')
end

blended_smoothie = making_hash_smoothie(smoothie_ingredients)
$stdout.puts(blended_smoothie)
