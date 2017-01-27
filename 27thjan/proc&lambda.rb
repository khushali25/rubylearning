prc = lambda {puts 'Hello'}
# method call invokes the block
prc.call

# another example
toast = lambda do
  'Cheers'
end
puts toast.call

def multiple_procs(proc1, proc2)
  proc1.call
  proc2.call
end

a = Proc.new { puts "First proc" }
b = Proc.new { puts "Second proc" }

multiple_procs(a,b)


proc = Proc.new { puts "Hello world" }
lam = lambda { puts "Hello World" }

puts proc.class # returns 'Proc'
puts lam.class  #returns 'Proc'


#Difference bet procs and lambda
#Lambdas check the number of arguments, while procs do not
lam = lambda { |x| puts x }    # creates a lambda that takes 1 argument
lam.call(2)                    # prints out 2
#lam.call                       # ArgumentError: wrong number of arguments (0 for 1)
#lam.call(1,2,3)                # ArgumentError: wrong number of arguments (3 for 1)

proc = Proc.new { |x| puts x } # creates a proc that takes 1 argument
proc.call(2)                   # prints out 2
proc.call                      # returns nil
proc.call(1,2,3)               # prints out 1 and forgets about the extra arguments


#Lambdas and procs treat the ‘return’ keyword differently
#‘return’ inside of a lambda triggers the code right outside of the lambda code
def lambda_test
  lam = lambda { return }
  puts "lam"
  lam.call
  puts "Hello world"
end
puts "lamda"
lambda_test
puts "la"


#‘return’ inside of a proc triggers the code outside of the method where the proc is being executed

def proc_test
  proc = Proc.new { return }
  puts "pr"
  proc.call
  puts "Hello world"
end
puts "Proc"
proc_test                 # calling proc_test prints nothing


def my_method
  puts "before proc"
  my_proc = Proc.new do
    puts "inside proc"
    return
  end
  my_proc.call
  puts "after proc"
end

my_method
