# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

data_file = Rails.root.join('db', 'data', 'countries.yml')

YAML::load_file(data_file).map do |country|
  country.delete 'all_languages' # not in the model...
  Country.create country
end
