begin
file=open("file2.txt")

if file
	puts "file opened successfully"
end
rescue
	file=STDIN
end
print file, "==", STDIN ,"\n"




=begin

filevar=open("file23.txt")

if filevar
	puts "file opened successfully"
end
rescue

	fname="file2.txt"
	retry
=end



i=0
begin
	puts "try"
	raise 'oops'
rescue => ex
	puts ex
	print "i=" ,i,"\n"
	i+=1
	retry if i<3

ensure
	puts "always executed"	
end
puts "ok i give up",i


a=20
begin
	puts "try"
	
	#raise 'oops'

rescue Exception => ex
	puts ex.message

else
puts "else executed"   #when there is no any exception occur then else part will be executed

end



def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end
promptAndGet("Name1:")
