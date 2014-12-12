# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

people = [
  { word: "Eric Kelly"},
  { word: "Dan Pickett"},
  { word: "Omid Bachari"},
  { word: "Adam Sheehan"},
]

people.each do |info|
  person = Person.new
  person.word = info[:word]
  person.save
end

nouns = [
  { word: "Parrot"},
  { word: "Lamp"},
  { word: "Desk"},
  { word: "SUV"},
  { word: "Cuban"},
  { word: "Hurricane"},
  { word: "Machine"},
  { word: "Ox"},
]

nouns.each do |info|
  noun = Noun.new
  noun.word = info[:word]
  noun.save
end

superlatives = [
  { word: "Slowest"},
  { word: "Best"},
  { word: "Worst"},
  { word: "Friendliest"},
  { word: "Smallest"},
  { word: "Loudest"},
  { word: "Most Gullible"},
  { word: "Angriest"},
  { word: "Coolest"}
]

superlatives.each do |info|
  superlative = Superlative.new
  superlative.word = info[:word]
  superlative.save
end

prepositions = [
  { word: "On the planet"},
  { word: "Under the sun"},
  { word: "Around town"},
  { word: "Above the trees and rooftops"},
  { word: "After Labor Day"},
  { word: "In The West"},
  { word: "With A Plan"},
]

prepositions.each do |info|
  preposition = Preposition.new
  preposition.word = info[:word]
  preposition.save
end

participles = [
  { word: "Explained"},
  { word: "Broken"},
  { word: "Mapped"},
  { word: "Found"},
  { word: "Laminated"},

]

participles.each do |info|
  participle = Participle.new
  participle.word = info[:word]
  participle.save
end
