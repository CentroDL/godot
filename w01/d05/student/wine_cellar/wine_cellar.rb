# requires the 'pry' gem, in case programmers want to debug their program with binding.pry
require 'pry'

wine_cellar = [
  { :label => "Rutherford Hill", :type => "Chardonnay", :color => "red" },
  { :label => "Nina Veneto", :type => "Pinot Grigio", :color => "white" },
  { :label => "Wairau River", :type => "Sauvignon Blanc", :color => "white" },
  { :label => "Tangley Oaks", :type => "Merlot", :color => "red" },
  { :label => "Chimney Rock", :type => "cabernet Sauvignon", :color => "red" },
  { :label => "Sanford", :type => "Pinot Noir", :color => "red" },
  { :label => "Alderbrook", :type => "Pinot Noir", :color => "red" },
  { :label => "Colavita", :type => "Pinot Noir", :color => "red" },
  { :label => "Markham", :type => "Chardonnay", :color => "white" },
  { :label => "Angeline", :type => "Pinot Noir", :color => "red" }
]
# $stdout.puts(wine_cellar)

saved_for_special_occasion = wine_cellar[2]
swill = wine_cellar[3]
wine_cellar[0][:color] = "white"

new_wine = {
  :label => "Four Seasons",
  :type => "Sauvignon Blanc",
  :color => "white"
}
wine_cellar.push(new_wine)

def choose_drink_enjoy(wine_list)
  amount_of_wine = wine_list.count - 1
  rand_num = rand(1..amount_of_wine)
  less_wine = wine_list.delete_at(rand_num)
  return less_wine
end

# ANOTHER SETUP FOR THE METHOD
# def choose_drink_enjoy(wine_list)
#   wine_to_drink = wine_list.sample
#   wine_list.delete(wine_to_drink)
#   return "look you are down a bottle of wine: #{wine_to_drink}"
# end

choose_drink_enjoy(wine_cellar)
choose_drink_enjoy(wine_cellar)
choose_drink_enjoy(wine_cellar)
choose_drink_enjoy(wine_cellar)
choose_drink_enjoy(wine_cellar)
choose_drink_enjoy(wine_cellar)
$stdout.puts(wine_cellar)
# binding.pry
