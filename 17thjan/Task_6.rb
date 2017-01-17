
puts "Enter Filename"
fname=gets.chomp
file1=File.open(fname,'w+') if File::exist?(fname) 

puts "Enter string"
str=gets.chomp
file1.write(str)

file1.write("\n")

arr=["1.3","2","hello"]
puts "...........Array elements............."
print arr,"\n"

file1.write(arr)
file1.write("\n")

file1.write(arr.length)
file1.write("\n")

file1.write(arr.reverse)


arr1=[3,2,6]
puts "...........Reverse Array elements............."
print arr1.reverse,"\n"
puts "Min of array=",arr1.min
puts "Max of array=",arr1.max
file1.close


file2=File.open("filetest.txt",'r+')
puts file2.read
file2.close

require 'fileutils'
FileUtils.cp('/home/khushali1/Documents/rubylearning/17thjan/filetest.txt','/home/khushali1/Documents/rubylearning/17thjan/filetest2.txt')

