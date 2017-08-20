# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
['Universal',
'Virgin',
'Atlantic',
'Geffen'].each do |label|
  Label.find_or_create_by(name: label)
end

['The Best of the Doors',
'Waiting for the Sun',
'Darkside of the moon',
'Hot fuss',
'Battle Born',
'Live at leeds',
'No More Rain',
'The X Files'].each do |album_name|
  Album.find_or_create_by(name: album_name)
end

Artist.destroy_all
['The Doors',
'The Doors',
'Pink Floyd',
'Ozzy Osbourne',
'The Killers',
'The Who',
'DJ Dado'].each do |artist_name|
  Artist.create(name: artist_name)
end
