                                            #SELF
#One thing we have not talked much about is the Ruby keyword self. Self refers to whatever object called that method. In Ruby, everything is an object so self can mean a lot of different things. Let's open the Fixnum and String classes and see self working in different contexts.

=begin
class Fixnum
    def who_am_i
        puts self
    end
end
class String
    def who_am_i
        puts self
    end
end
4.who_am_i # => 4
15.who_am_i # => 15
"string".who_am_i # => "string"
"hello_world".who_am_i # => "hello_world"
=end

#Let's create a Mammal class in a separate file and use self in our own class.
# class Mammal
#     def initialize
#         puts "I am alive"
#     end
#     def breath  
#         puts "Inhale and exhale"
#     end
    
#     def who_am_i
#         # printing the current object
#         puts self
#     end
# end
# my_mammal = Mammal.new # => "I am alive"
# my_mammal.who_am_i # => #<Mammal:0x007f9e86025dd8>
# my_mammal.who_am_i.breath # => undefined method `breath' for nil:NilClass (NoMethodError)

#In the last line of our script, we tried to chain methods. However, we get a NoMethodError that 'breath' is an undefined method for a nil value. The reason is that since the puts method prints the value and returns nil, the value that is getting returned from our instance methods is nil. To be able to chain methods, our instance methods need to return an object, more specifically, they need to return self.
class Mammal
    def initialize
        puts "I am alive"
        self     #possibly dont need this here????
    end
    def breath  #the difference here is we also included "self"
        puts "Inhale and exhale"
        self
    end
    
    def who_am_i
        puts self
        self
    end
end
my_mammal = Mammal.new.who_am_i.breath