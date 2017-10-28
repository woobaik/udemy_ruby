favorite_foods = {
  sarah: "pizza",
  kimberley: "pizza",
  brian: "pizza",
  lionel: "pizza",
  kevin: "dijon mustard on a buscuit"
}


# Adding values :
p favorite_foods[:lionel]

favorite_foods[:tyra] = "crispy bacon"

p favorite_foods[:tyra]

favorite_foods[:hunter] = "venison"

p favorite_foods

#Hashes are ordered after 1.9 Ruby

favorite_foods[:kimberley] = nil

p favorite_foods

favorite_foods.default = "cheese"

p favorite_foods[:haram]


foosball_scores = Hash.new(0)
p foosball_scores

p foosball_scores[:sarah]
p foosball_scores[:sarah] += 1

p foosball_scores
p foosball_scores[:kay] += 1

p foosball_scores[:justin] += 1

players = foosball_scores.keys

scores =  foosball_scores.values

p players
p scores
