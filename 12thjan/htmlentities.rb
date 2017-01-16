require 'htmlentities'

#decode
coder=HTMLEntities.new
string="&apos;&pound;khushali&pound;&apos;"
puts coder.decode(string)

#encode
coder=HTMLEntities.new
string="<khushali>"
puts coder.encode(string, :named)
puts coder.encode(string, :hexadecimal)
puts coder.encode(string, :decimal, :basic)



