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
puts "And the winner is ... #{winner}"
