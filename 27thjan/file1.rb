puts Dir.pwd
File.open('27thjan/test.rb','r') do |f1|
  #File.open('27thjan/test.rb', 'r:UTF-16LE:UTF-8') do |f1|
  while line = f1.gets
    puts line
  end
end


File.open('27thjan/test.rb', 'a+') do |f2|
  f2.puts "hello"
end

require 'find'
Find.find('/home/khushali1/Documents/rubylearning/27thjan') do |f|
  type = case
         when File.file?(f) then "F"
         when File.directory?(f) then "D"
         else "?"
         end
  puts "#{type}: #{f}"
end

f=File.open("27thjan/test.rb")
#f.seek(6,IO::SEEK_SET)
f.seek(6,IO::SEEK_CUR)
print f.readline
f.close

f1=File.open("27thjan/test.rb")
f1.seek(6,IO::SEEK_SET)
print f1.readline
f1.close

f2=File.open("27thjan/test.rb")
f2.seek(-12,IO::SEEK_END)
print f2.readline
f2.close
