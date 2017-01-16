require_relative 'Module1'

module Module2
include Module1

	def Module2.sort_sentence(sentence)
		words=Module1.break_words(sentence)
	
		return Module1.sort_words(words)
	end

	def Module2.print_first_and_last(words)
    		
    		Module1.print_first_word(words)
    		Module1.print_last_word(words)
  	end
	
	def Module2.print_first_and_last_sorted(sentence)
    		words = Module2.sort_sentence(sentence)
		
    		Module1.print_first_word(words)
		Module1.print_last_word(words)
	end
    

sentence="all good things come to those who wait."


words=Module1.break_words(sentence)
sorted_word=Module2.sort_sentence(sentence)
print sorted_word

puts "\n ...................first and last word before sort..........."
Module2.print_first_and_last(words)

puts "......................first and last word after sort.............."
Module2.print_first_and_last_sorted(sentence)
end
