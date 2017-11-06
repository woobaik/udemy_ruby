=begin
#Exceptions
=end

def sqrt(num)
  unless num >= 0
    raise ArgumentError.new "Cannot take sqrt of negative number"
  end
   puts num - 1

end

def main
  while true
    #get an integer from the user
    puts "Please input a number"
    num = gets.to_i

    begin
      sqrt(num)
    rescue ArgumentError => e
      puts "Couldn't take the squre root of #{num}"
      puts "Error Message : #{e.message}"
    ensure
      puts "Whatever, execute this code"

    end
  end
end

main
