# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Event.destroy_all if Rails.env.development?
Location.destroy_all if Rails.env.development?

Location.create name: "Merchandise Mart", address: "222 Merchandise Mart Plaza"
5.times do |n|
  Location.create name: "place#{n}",
  	address: "#{rand(200)+100} Some Avenue"
end
