# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(and dna dan nda).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123',
               password_confirmation: 'abc123')
end


Pressure.Create!(value:1030.99)
Pressure.Create!(value:1030.49)
Pressure.Create!(value:1013.29)
Pressure.Create!()

monday
{"coord":{"lon":-71.11,"lat":42.38},"weather":[{"id":800,"main":"Clear","description":"Sky is Clear","icon":"01d"}],"base":"cmc stations","main":{"temp":286.331,"pressure":1030.99,"humidity":43,"temp_min":286.331,"temp_max":286.331,"sea_level":1041.92,"grnd_level":1030.99},"wind":{"speed":2.33,"deg":250.502},"clouds":{"all":0},"dt":1447096447,"sys":{"message":0.0104,"country":"US","sunrise":1447068506,"sunset":1447104459},"id":4931972,"name":"Cambridge","cod":200}

also monday
{"coord":{"lon":-71.11,"lat":42.38},"weather":[{"id": 800,"main":"Clear","description":"Sky is Clear","icon":"01d"}],"base":"cmc stations","main":{"temp":284.791,"pressure":1030.49,"humidity":46,"temp_min":284.791,"temp_max":284.791,"sea_level":1041.57,"grnd_level":1030.49},"wind":{"speed":2.12,"deg":238.001},"clouds":{"all":0},"dt":1447099747,"sys":{"message":0.0117,"country":"US","sunrise":1447068509,"sunset":1447104457},"id":4931972,"name":"Cambridge","cod":200}

missing tuesday

wednesday
{"coord":{"lon":-71.11,"lat":42.38},"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"base":"cmc stations","main":{"temp":281.555,"pressure":1013.29,"humidity":99,"temp_min":281.555,"temp_max":281.555,"sea_level":1024.19,"grnd_level":1013.29},"wind":{"speed":3.97,"deg":22.5052},"rain":{"3h":3.1125},"clouds":{"all":92},"dt":1447258866,"sys":{"message":0.0028,"country":"US","sunrise":1447241447,"sunset":1447277144},"id":4931972,"name":"Cambridge","cod":200}

Entry.create!({day_rating:"good", pain_rank:3, note_entry:"Only minor headache and shoulder pain.", symptoms:"headache", medication:"advil", mood:2})
Entry.create!({day_rating:"poor", pain_rank:7, note_entry:"Moderate headache and nausea.", symptoms:"headache, nausea", medication:"advil",
  mood:6})
Entry.create!({day_rating:"poor", pain_rank:8, note_entry:"Severe headache and intense joint inflamation.", symptoms:"headache, inflamation",medication:"advil", mood:9})
Entry.create!({day_rating:"good", pain_rank:5, note_entry:"Less headache.", symptoms:"headache", medication:"advil", mood:6})
Entry.create!({day_rating:"great", pain_rank:1, note_entry:"Good day", symptoms:" ", medication:" ", mood:1})
Entry.create!({day_rating:"good", pain_rank:3, note_entry:"Minor neck pain and inflamation.", symptoms:"neckache, inflamation", medication:"advil", mood:2})
