def my_method
  puts "reached the top"
  yield
  puts "reached the bottom"
end

my_method do
  for i in 1..3 do
  puts "reached yield"
end
end


def my_method(&block)
  puts block
  block.call
  puts block.class
end

my_method { puts "Hello!" }

def thrice
  yield
  yield
  yield
end

x = 5
puts "value of x before: #{x}"
thrice { x += 1 }
puts "value of x after: #{x}"


# A block refers to variables in the context it was defined, not the context in which it is called:
def thrice_with_local_x
  x = 100
  yield
  yield
  yield
  puts "value of x at end of thrice_with_local_x: #{x}"
end

x = 5
thrice_with_local_x { x += 1 }
puts "value of outer x after: #{x}"

# A block only refers to *existing* variables in the outer context; if they don't exist in the outer, a
# block won't create them there:
thrice do # note that {...} and do...end are completely equivalent
  y = 10
  puts "Is y defined inside the block where it is first set?"
  puts "Yes." if defined? y
end
puts "Is y defined in the outer context after being set in the block?"
puts "No!" unless defined? y



def six_times(&block)
  thrice(&block)
  thrice(&block)
end
x = 4
six_times { x += 10 }
puts "value of x after: #{x}"


#1st way
def save_for_later(&b)
  @saved = b  # Note: no ampersand! This turns a block into a closure of sorts.
end

save_for_later { puts "Hello!" }
puts "Deferred execution of a block:"
@saved.call
@saved.call
puts @saved.class

#2nd way
def save_for_later(&b)
  @saved = Proc.new(&b) # same as: @saved = b
end

save_for_later { puts "Hello again!" }
puts "Deferred execution of a Proc works just the same with Proc.new:"
@saved.call


@saved_proc_new = Proc.new { puts "I'm declared with Proc.new." }
@saved_proc = proc { puts "I'm declared with proc." }
@saved_lambda = lambda { puts "I'm declared with lambda." }
def some_method
  puts "I'm declared as a method."
end
@method_as_closure = method(:some_method)

puts "Here are four superficially identical forms of deferred execution:"
@saved_proc_new.call
@saved_proc.call
@saved_lambda.call
@method_as_closure.call
puts @method_as_closure.class               #method
