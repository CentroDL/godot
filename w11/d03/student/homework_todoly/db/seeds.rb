# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.delete_all

Task.create({ description: "Kill Renly Baratheon", is_complete: true })
Task.create({ description: "Sack Winterfell" })
Task.create({ description: "Confirm the capture of the Targaryen girl" })
