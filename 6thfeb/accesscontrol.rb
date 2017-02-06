# class Song
#   def initialize(name, artist)
#     @name     = name
#     @artist   = artist
#   end
#   def name
#     @name
#   end
#   def artist
#     @artist
#   end
# end
#
# song = Song.new("Brazil", "Ivete Sangalo")
# puts song.name
# puts song.artist

class Song
  def initialize(name, artist)
    @name     = name
    @artist   = artist
  end
  attr_reader :name, :artist  # create reader only
  # For creating reader and writer methods
  # attr_accessor :name
  # For creating writer methods
  # attr_writer :name

end

song = Song.new("Brazil", "Ivete Sangalo")
puts song.name
puts song.artist


class A

 def public_method
   p "public method in A"
   protected_method
   private_method
 end

protected

 def protected_method
   p "protected method in A"
 end

private

 def private_method
   p "private method in A"
 end
end

a = A.new
a.public_method


#private methods are inherited
class A
  def public_method
    p "public method in A"
  end

protected

  def protected_method
    p "protected method in A"
  end

private

  def private_method
    p "private method in A"
  end
end

class B < A
  def public_method_in_b
    public_method
    protected_method
    private_method
  end
end

b = B.new
b.public_method_in_b

#accessing protected and private methods
class A
  def public_method
    p "public method in A"
  end

protected

  def protected_method
    p "protected method in A"
  end

private

  def private_method
    p "private method in A"
  end
end

class B < A
  def public_method_in_b
    public_method
  end
end

b = B.new
b.public_method
# b.protected_method    #error
# b.private_method

#accessing protected methods with explicit receiver
class A
  def public_method
    p "public method in A"
  end

protected

  def protected_method
    p "protected method in A"
  end

private

  def private_method
    p "private method in A"
  end
end

class B < A
  def public_method_in_b
    public_method
    b1 = B.new
    b1.protected_method
    #b1.private_method    #errro
  end
end

b = B.new
b.public_method_in_b


class Demo
  def sum(n1,n2)
    puts n1+n2
  end

  def mul(n1,n2)
    puts n1*n2
  end

  protected :sum
  private :mul
end

class Sub < Demo
  def display
    # sum(10,20)    #no error
    # mul(10,20)    #no error
    # s1 = Sub.new
    # s1.sum(10,20)  #no error----accessing protected method with explicit receiver
    # s1.mul(10,20)   #error
  end
end

s = Sub.new
s.display
#s.sum(10,20)     #error
#s.mul(10,20)      #error
