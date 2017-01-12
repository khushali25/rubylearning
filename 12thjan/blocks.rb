#1st way to call block from method
def testblock
	puts "hello"
	yield
	puts "hii"
        yield 4
end
testblock{|i| puts "#{i}"}          #first execute all the yield statements with this block.
testblock{puts "block executed"}    #After execute first block it starts execution of 2nd block with all yield statements.


#2nd way to call block from method
puts "\n Second way"
def test(&block)
	block.call "abc"
	block.call
end
test{puts "hello"}
test{|i| puts "#{i}"}


def demo
	puts "ruby"
	yield
	puts "rails"
	yield "abs","abd"
end
demo{|i,j| puts "#{i}\s#{j}"}


#BEGIN and END

END{
puts "end"
puts "end1"
}

BEGIN{
puts "begin"
puts "begin1"
}

puts "main"

