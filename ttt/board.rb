class Board
  WIDTH = 3
  HEIGHT = WIDTH
  attr_accessor :grid
  def initialize
    @grid = Array.new(HEIGHT) {Array.new(WIDTH, :" ")}
  end

  def print_grid
    @grid.each do |row|
      puts
      row.each do |cell|
        print "[#{cell}]"
      end
    end
    puts
  end

  def [](y,x)
    @grid[y][x]
  end

  def []=(y,x,something)
    if @grid[y][x] == :" " && [:"X", :"O"].include?(something)
    @grid[y][x] = something
    else
      return false
    end
  end

  def winner?(marker)
    row_win?(marker) || col_win?(marker) || diag_win?(marker)
  end

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end
  end

  def col_win?(marker)
    (0...WIDTH).any? do |col|
      @grid.all? do |row|
        row[col] == marker
      end
    end
  end

  def diag_win?(marker)
    [lambda {|i| i},
     lambda {|i| -1 * (1 + i)}
    ].any? do |proc|
      (0...WIDTH).all? do |i|
        @grid[i][proc.(i)] == marker
      end

     end
  end
end


#
# a = Board.new
# a[0,0] =:X
# a.print_grid
# p a.row_win?(:X)
# p a.col_win?(:X)
# p a.diag_win?(:X)
# puts
#
# a[1,1] =:X
# a.print_grid
# p a.row_win?(:X)
# p a.col_win?(:X)
# p a.diag_win?(:X)
# puts
#
# a[2,2] =:X
# a.print_grid
# p a.row_win?(:X)
# p a.col_win?(:X)
# p a.diag_win?(:X)
# puts
