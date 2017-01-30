str = 'Original string - '
str.freeze
str += 'attachment'
puts str


# str1 = 'Original string - '
# str1.freeze
# str1 << 'attachment'   #can't modify frozen string
# puts str1


a = b = 'Original String'
b.freeze
puts a.frozen? # true
puts b.frozen? # true
a = 'New String'
puts a
puts b
puts a.frozen? # false
puts b.frozen? # true

OUTER_CONST = 99

class Const
    def get_const
      CONST
    end
    CONST = OUTER_CONST + 1
end

puts Const.new.get_const
puts Const::CONST
puts ::OUTER_CONST
puts Const::NEW_CONST = 123
puts Const::CONST
 
