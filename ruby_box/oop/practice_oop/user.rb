# class User
# end
# user1 = User.new
# user2 = User.new
# user1 == user2 # => false

# class User
#     @first_name
# end
# user1 = User.new
# user2 = User.new
# user1.first_name = "Matz"

# class User              #setter method
#     def first_name=(val) 
#         @first_name = val
#     end
# end
# user1.first_name = "Matz"
# puts user1.inspect

# class User                #getter method
#     def first_name
#         return @first_name
#     end
# end

# class User           #add attribute to User class
#     @last_name
# end

#Now we could write a getter and a setter for this attribute as well, but that seems like a lot of work. In fact, since it is so common for us to write getters and setters for our attributes, Ruby provides us with syntactic sugar:

# class User
#     attr_reader :last_name
#     attr_writer :last_name
# end

# class User
#     attr_accessor :first_name, :last_name
#     def initialize(f_name, l_name)
#         @first_name = f_name
#         @last_name = l_name
#     end
# end
# steph = User.new("Stephen", "Curry")
# hannah = User.new("Hannah", "Kingsolver")
# puts steph.last_name
# puts hannah.first_name


# i literally dont know whats going on... lmao
#--------------------------------------------------------------------------------------------------------
                                        #METHODS

#Classes in Ruby have two types of methods. Class methods that are called on the class and instance methods that are called on the instances of the class.
#--------------------------------------------
#Instance Methods
# Instance methods are just regular methods that are defined inside the Class definition. Let's look at an example:
=begin

class MyClass
    def some_method
        puts "This is an instance method"
    end
end
something = MyClass.new
something.some_method  # => "This is an instance method"
hannah = MyClass.new #setting "hannah" to be the instance?? maybe
hannah.some_method # calling the function to puts "This is an instance method"
hannah.some_method # and again cos why not

=end

#If you notice, we already have been creating instance methods in the previous tab. Whenever we have attr_reader, attr_writer or attr_accessor, we are creating instance methods that get and set attributes accordingly. Along with getter and setter, we can also create our own custom methods

=begin
class User
    # creating instance methods that get and set the first_name and last_name attributes
    attr_accessor :first_name, :last_name 
    
    def initialize(f_name, l_name) 
        @first_name = f_name
        @last_name = l_name
    end
    
    def full_name
        puts "I am #{@first_name} #{@last_name}"
    end
    
    def say_hello
        puts "Hello!"
    end
end
u = User.new("John", "Doe")
u.full_name # => "I am John Doe"
u.say_hello # => "Hello!"
=end
#As you can see, we are calling the full_name and say_hello methods on an instance of the User class.
#---------------------------------------------
#Class Methods
# Class methods are declared the same way as normal methods, except that they are prefixed by self followed by a period. These methods are executed at the Class level and are not available to the instances. Let's add a class method to our User class

# class User
#     # previous code removed for brevity
#     attr_accessor :first_name, :last_name  #added here to
#     def initialize(f_name, l_name)           #...
#         @first_name = f_name                 #...
#         @last_name = l_name                  #...
#     end                                    #here to make code work
#     def self.foo
#         puts "This is a class method"
#     end
# end
# u = User.new("Jane", "Doe")
# # u.foo # => NoMethodError: undefined method `foo'
# User.foo # => "This is a class method"
#--------------------------------------------------------------------------------------------------------
#                                         Variables
=begin
Local Variable
A regular variable in Ruby.
ex) x = "whatever", y = "whatever", z = "whatever"

Instance Variable
Begins with @ and are available to instances of the class.
ex) @branch_id = id , @branch_name = name , @branch_address = address 

Class Variable
Begins with @@ and are available to the class itself
ex) @@no_of_branches = 0

Global Variable
Begins with $. Avoid using this, if possible, since it is available everywhere.
ehhhhh whatever fuck dis lol
=end


#Class Example

class CodingDojo 
    @@no_of_branches = 0
    def initialize(id, name, address) #logic to get and set branch attributes
        @branch_id = id      #setting instance variables
        @branch_name = name 
        @branch_address = address 
        @@no_of_branches += 1 
        puts "Created branch #{@@no_of_branches}"
    end
    def hello 
        puts "Hello #{@branch_name}!"
    end
    def display_all
        puts "Branch ID: #{@branch_id}"
        puts "Branch Name: #{@branch_name}" 
        puts "Branch Address: #{@branch_address}"
    end 
end 
# now using above class to create objects 
# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
# branch.display_all 
# branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
# branch2.display_all
branch3 = CodingDojo.new(69, "The Dirty D Dojo", "Dallas, TX")
branch3.hello
branch3.display_all
# branch3.branch_name # returns a "undefined method error"