# Random numbers

# 0..9 inclusive.   or 0 ... 10 exclusive
#p rand(10)

# If we want someone to always win
# We just need to choose one of our player
# (raffle style)

# If we want a number that our players have to match
# there might not be any winner
#(Lottery style)

players = ["Duncan", "Kevan", "Tara", "Boddy", "Jane"]

# winner = players[rand(players.length)]   # 0 <= x < 5

winner = players.sample
puts "And the winner is ... #{winner}!"


players = {
  3 => "Duncan",
  5 => "Kevan",
  8 => "Tara",
  4 => "Bobby",
  1 => "Jane"
}
players.default = "nobody"
winning_number = rand(10) + 1 # 1 <= x <= 10

puts "And the winner is ... #{players[winning_number]}!"

#players.sample or players.shuffle!.pop would work as well
