# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coop_buildings = [
  ["185", "Clinton","North"],
  ["193", "Clinton","North"],
  ["201", "Clinton","North"],
  ["xxx", "Clinton","North"],
  ["xxx", "Clinton","North"],
  ["xxx", "Clinton","North"],
  ["xxx", "Clinton","North"],
  ["325", "Clinton","South"],
  ["345", "Clinton","South"],
  ["355", "Clinton","South"],
  ["361", "Clinton","South"],
  ["365", "Clinton","South"],
]

coop_buildings.each do |num, st, camp|
  Building.create(number:num, street:st, campus:camp)
end