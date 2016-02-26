# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
parts_database = [
  ["MAIN ENGINE CONTROL", "8063-215", "", 1, "WOODWARD", 32560.00],
  ["SHAFT - HPT REAR", "1864M91P02", "", 1, "CFMI", 98010.00],
  ["COVER - SPINNER CONE", "335-106-402-0", "", 1, "CFMI", 5257.00],
  ["SHAFT - HPT REAR", "1864M91P02", "", 1, "CFMI", 539200.00]
]

parts_database.each do |description, partnum, serialnum, minqty, manufacturer, mfgprice|
  Part.create(Description: description, PartNum: partnum, SerialNum: serialnum, MinQty: minqty, Manufacturer: manufacturer, MfgPrice: mfgprice)
end
