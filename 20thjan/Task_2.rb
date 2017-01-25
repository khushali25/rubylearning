#==============================================
#Game
#Computer will guess a number. Between 50 to 150.
#User should have 10 tries to identify that number.
#If the user enters a lower number then selected then give a message like this is “This is lesser then selected number” and if the user enters higher number then selected show message like “This is greater then selected number”.
#Suppose computer guess 64.
#User enters 55 then show message “This is laser then selected number”
#User enters 65 then show message “This is greater than selected number”
#And if user gives correct number at 5th attempt then show this message → “Congratulations, You got the number <number> in 5 attempts(try)”
#Or if user not able to provide correct number in 10 tries then show message like “You lose this game”
#===============================================

ran=Random.new
ran1=ran.rand(50..150)
puts ran1.to_i

utry=1
(1..10).each do |utry|
  print "Guess Number: "
  num=gets.chomp.to_i

if utry < 10 then
    if num < ran1 then
        puts "This is laser then selected number"
    elsif num > ran1
        puts "This is greater than selected number"
    else num==ran1
        puts "Congratulations, You got the number in #{utry} attempts"
    break
    end
else
    puts "You Loss the game" if utry==10
end
end
