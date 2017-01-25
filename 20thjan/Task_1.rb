puts "Enter your name :"
name=gets.chomp

puts "Category : "
puts "Electronics"
puts "Clothing"
puts "Toys"
puts ".....Select Category....."

cat=gets.chomp
SHIPPING=100
TAX=10
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
        @i1=i
        @n=n
        @pr=pr
      end

      def view
        print "id = ",@i1,"\n"
        print "Name =",@n,"\n"
        print "Price =",@pr,"\n"
      end
  #  end
      obj1=Toys.new(1,"Mickey","900")
      print "Toys Product :","\n"
      obj1.view
      obj2=Toys.new(2,"Doll","2000")
      obj2.view
      obj3=Toys.new(3,"Teddy","1000")
      obj3.view


      id1=obj1.instance_variable_get(:@i1)
      price=obj1.instance_variable_get(:@pr)
      amt=price.to_i

      id2=obj2.instance_variable_get(:@i1)
      price=obj2.instance_variable_get(:@pr)
      amt2=price.to_i

      id3=obj3.instance_variable_get(:@i1)
      price=obj3.instance_variable_get(:@pr)
      amt3=price.to_i

      puts "Please select product :"
      id=gets.chomp.to_i

      if id==id1 then
        puts "Enter Qauntity:"
        q=gets.chomp.to_i
        puts "==============INVOICE================\n"
        print obj1.view
        print "Qauntity = ",q,"\n"
        print "Shipping Charge= ",SHIPPING,"\n"
        print "Tax= ",TAX,"%","\n"
        a=q*amt
        print "Amount= ",a,"\n"
        t=(a*TAX)/100
        tax_amt=a+t
        print "Tax included amount= ",tax_amt,"\n"
        print "Total Amount(Tax and shipping charge included) :",tax_amt+SHIPPING,"\n"
        puts "======================================"


      elsif id==id2 then
        puts "Enter Qauntity:"
        q=gets.chomp.to_i
        print "Qauntity = ",q,"\n"
        print obj2.view
        print "Total Amount= ",q*amt2,"\n"

      else id==id3
        puts "Enter Qauntity:"
        q=gets.chomp.to_i
        print "Qauntity = ",q,"\n"
        print obj3.view
        print "Total Amount= ",q*amt3,"\n"
      end
end
end
