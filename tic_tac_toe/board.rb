class Board

HEIGHT = 3
WIDTH = HEIGHT

attr_accessor :grid

  def initialize
    @grid = Array.new(HEIGHT) {Array.new(WIDTH,:" ")}
  end

  def [](y,x)
    @grid[y][x]
  end

  def []=(y,x,mark)
    @grid[y][x] = mark

  end

  def print_grid
    @grid.each do |row|
      puts ""
      row.each do |cell|
        print "[#{cell}]"
      end
    end
    puts
  end

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end
  end

  def column_win?(marker)
    (0...WIDTH).any? do |col|
      @grid.all? do |row|
        row[col] == marker
      end
    end
  end

  def diagonal_win?(marker)
    return true if (0...WIDTH).all? do |i|
      @grid[i][i] == marker
    end
    return true if (0...WIDTH).all? do |i|
      @grid[i][-(i+1)] == marker   #-(i+1) reflects the negative index
    end
    false
  end

end

def print_and_check
  @b.print_grid
  p @b.row_win?(:O)
  p @b.row_win?(:X)
  p @b.column_win?(:O)
  p @b.column_win?(:X)
  p @b.diagonal_win?(:X)
  p @b.diagonal_win?(:O)
end

@b = Board.new
print_and_check
@b[0,2]=:O
print_and_check
@b[1,1]=:O
print_and_check
@b[0,2]=:O
print_and_check
