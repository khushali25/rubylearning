puts "Enter your name :"
name=gets.chomp

puts "Category : "
puts "Electronics"
puts "Clothing"
puts "Toys"
puts ".....Select Category....."

cat=gets.chomp
case cat
when "Electronics" then
class Electronics

  def initialize(i,n,pr)
    @i=i
    @n=n
    @pr=pr
  end

  def view
    print "id = ",@i,"\n"
    print "Name =",@n,"\n"
    print "Price =",@pr,"\n"
  end
end
  obj1=Electronics.new("1","Microwave","9000")
  print "Electronics Product :","\n"
  obj1.view
  obj2=Electronics.new("2","TV","20000")
  obj2.view
  obj3=Electronics.new("3","Speaker","5000")
  obj3.view
  puts "\n"
when "Clothing" then
  class Clothing
    def initialize(i,n,pr)
      @i=i
      @n=n
      @pr=pr
    end

    def view
      print "id = ",@i,"\n"
      print "Name =",@n,"\n"
      print "Price =",@pr,"\n"
    end
  end
    obj1=Clothing.new("1","Dress","9000")
    print "Clothing Product :","\n"
    obj1.view
    obj2=Clothing.new("2","Jeans","20000")
    obj2.view
    obj3=Clothing.new("3","kurti","1000")
    obj3.view
    puts "\n"

else
    class Toys
      def initialize(i,n,pr)
        @i=i
        @n=n
        @pr=pr
      end

      def view
        print "id = ",@i,"\n"
        print "Name =",@n,"\n"
        print "Price =",@pr,"\n"
      end
    end
      obj1=Toys.new("1","Mickey","900")
      print "Toys Product :","\n"
      obj1.view
      obj2=Toys.new("2","Doll","2000")
      obj2.view
      obj3=Toys.new("3","Teddy","1000")
      obj3.view
end
