class Exc

  def raise_exc
    puts "Enter first number"
    n1 = gets.chomp.to_i
    puts "Enter second number"
    n2 = gets.chomp.to_i

    unless n2==0
      puts n1/n2
    else
      raise "Divide by zero error"
    end

  rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
    puts "Enter the second number except zero"

  end
end

ex1 = Exc.new
ex1.raise_exc
