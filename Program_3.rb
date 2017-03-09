# =======================================================================================
# Print the Following Series
# 
# *****
# ****
# ***
# **
# *
# **
# ***
# ****
# *****
#
#=========================================================================================

# Prints Start From More to Less [In Reverse Order]
5.downto(1).each do |i| 
  puts "*" * i
end

# Prints Start From Less to More
2.upto(5).each do |i| 
  puts "*" * i
end
