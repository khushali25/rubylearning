print 10110.to_s.reverse.gsub(/(\d{3})(?=\d)/,'\1,').reverse,"\n"

require 'date'
def pretty_date(date)

puts d ||=Date.strptime(date,'%m-%d-%Y')
puts d ||=Date.strptime(date,'%B %d, %Y')
puts d ||=Date.strptime(date,'%Y-%m-%d')
puts d ||=Date.strptime(date,'%m/%d/%Y')
puts Date.new.strftime('%b %d, %Y')
end
pretty_date("11-30-1835")


# time = Time.parse("17-Nov-2011")
# puts time.strftime("%m/%d/%y")

def do_pigs_fly?
  return true,false
end
  a,b=do_pigs_fly?
  puts b
  do_pigs_fly?

  def do_pigs_fly1?
    puts true.!
  end
  do_pigs_fly1?
