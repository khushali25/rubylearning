class Demo
  def m1
    puts "method m1"
  end
  def method_missing(name)
    puts "method missing called"
  end

  d=Demo.new
  d.m1
  d.abc
  d.abcd
end
