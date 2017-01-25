=begin
class User

    def self.update_score
        puts "Score updated"
    end
   def scoring(array)
       array=["user1","user2"]
       array.each do |user|
        User.update_score
    end
   end

    obj=User.new
    obj.scoring(Array)
    # iterate through each of the element in array using *each* and call update_score on it
end



class User

    def self.update_score
        puts "Score updated for non-admin!"
    end
    def self.is_admin?
        puts "Score not updated as the user is admin"
    end
    def self.scoring(array)
        array=[1,2,3,2,1,1,2,3,4,1]
        array.each do |user|
        unless (user==1) then
             User.update_score
        else
            User.is_admin?
        end
        end
    end
        User.scoring(Array)
end



#======================
#Hacker's Rank
#Ruby Control Structures - Case (Bonus Question)
#======================
class Demo
    def identify_class(obj)
    # write your case control structure here
    case obj
    when "Hacker" then
        puts "It's a Hacker!"
    when "Submission" then
        puts "It's a Submission!"
    when "TestCase" then
        puts "It's a TestCase!"
    when "Contest" then
        puts "It's a Contest!"
    else
        "unknown"
    end
end
        Demo.new.identify_class("Hacker")
        Demo.new.identify_class("Submission")
        Demo.new.identify_class("TestCase")
        Demo.new.identify_class("Submission")
        Demo.new.identify_class("Hacker")
        Demo.new.identify_class("Hacker")
        Demo.new.identify_class("Submission")
        Demo.new.identify_class("TestCase")
        Demo.new.identify_class("Contest")
        Demo.new.identify_class("Hacker")
        end
=end
class Class1

@count=0
    def self.count_multibyte_char(str)
    str.each_char {|a| @count=@count+1 if a.bytesize > 1}
    return @count
end

    Class1.count_multibyte_char("abc100")
end
