# REPL RPS in OOP

# Player class (2 instances)

# Game (App class)

class Player
  MOVES = [:rock, :paper, :scissors]
  attr_reader :score, :move

  def initialize
    @score = 0
    @move = nil
  end


  def get_move
    loop do
      puts "Pick a move"
      print "> "
      @move = gets.chomp.strip.downcase.to_sym
      if MOVES.include?(@move)
        return @move
      else
        puts "Invalid move"
      end
    end
  end

end


class Game
  WIN_SCENS = [
    [:rock, :scissors],
    [:scissors, :paper],
    [:paper, :scissors]
    ]
  # moves as [:rock, :scissors]

  def initialize
    @p1 = Player.new
    @p2 = Player.new

  end


  def pick_winner
    if @p1.move == @p2.move
      puts "It's a tie!"
    elsif WIN_SCENS.include?([@p1.move, @p2.move])
      puts "p1 wins"
    else
      puts "p2 wins"
    end
  end

  def play_round
    @p1.get_move
    @p2.get_move
    pick_winner
  end

end

game = Game.new
game.play_round
