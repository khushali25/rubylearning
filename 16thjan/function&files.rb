#take file from cmd open that file and read the content from file
filename=ARGV.first

def print_all(f)
	puts f.read
end

def rewind(f)
	puts f.seek(0)
end
	

file=open(filename)
print_all(file)
rewind(file)



def print_line(line_count,f)
	puts "#{line_count},#{f.gets.chomp}"
end

for i in 1..file.size
current_line=i
print_line(current_line,file)
end

=begin
current_line=current_line+1
print_line(current_line,file)

current_line=current_line+1
print_line(current_line,file)
=end
