module Module1

	def Module1.break_words(stuff)
		words=stuff.split(' ')
		return words 
	end

	def Module1.sort_words(words)
		return words.sort
	end

	def Module1.print_first_word(words)
		puts words.shift
	end
	
	def Module1.print_last_word(words)
		puts words.pop
	end
	


sentence="all good things come to those who wait."


puts "..................break words.................."
words=Module1.break_words(sentence)
print words
puts "\n"

puts "\n...............sort words after breaking..............."
sorted_words=Module1.sort_words(words)
print sorted_words
puts "\n"


puts "....................first word before sort............."
firstword=Module1.print_first_word(words)
print firstword
puts "\n"

puts "...................last word before sort.............."
lastword=Module1.print_last_word(words)
print lastword
puts "\n"

end
