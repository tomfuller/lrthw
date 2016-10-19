animals = ["bear", "ruby", "peacock", "kangeroo", "whale", "platypus"]

def ordinal_to_cardinal(ord, animals)
  puts "The animal in #{ord} place is at #{ord.to_i - 1} and is a #{animals[ord-1]}."
end

def cardinal_to_ordinal(card, animals)
  puts "The animal at #{card} is in #{card.to_i + 1} and is a #{animals[card]}"
end

ordinal_to_cardinal(2, animals)

cardinal_to_ordinal(1, animals)   
