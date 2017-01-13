#first way
time1=Time.new
puts "current time:",time1.inspect

#second way
time=Time.now
puts "current time:",time.inspect

puts time.year
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name

puts Time.local(2017, 01, 13) 
puts Time.local(2017, 01, 13,06,15,10) 
puts Time.utc(2017, 01, 13,06,15,10)  #UTC
puts Time.gm(2017, 01, 13,06,15,10)   #UTc

time2=Time.new
val=time2.to_a
print val
puts "\n"

puts Time.utc(*val)

puts "...............time..................."
puts time.zone       # => "UTC": return the timezone
puts time.utc_offset # => 0: UTC is 0 seconds offset from UTC
puts time.zone       # => "PST" (or whatever your timezone is)
puts time.isdst      # => false: If UTC does not have DST.
puts time.utc?       # => true: if t is in UTC time zone
puts time.localtime  # Convert to local timezone.
puts time.gmtime     # Convert back to UTC.
puts time.getlocal   # Return a new Time object in local zone
puts time.getutc     # Return a new Time object in UTC


time = Time.now.to_i  #display seconds till now
puts time

time = Time.now.to_f   #display seconds with microsconds till now
puts time

puts Time.at(time)
puts ".............format..."
puts time.to_s

time3=Time.now
puts time3.ctime
puts time3.localtime

puts time3.strftime("%a %b")

puts time3.strftime("%c")
puts time3.strftime("%%")


now = Time.now           # Current time
puts now

past = now - 10          # 10 seconds ago. Time - number => Time
puts past

future = now + 10        # 10 seconds from now Time + number => Time
puts future

diff = future - now      # => 10  Time - Time => number of seconds
puts diff
