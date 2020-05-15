                                # PRACTICE + STRINGS



# puts echos/prints to console/terminal a new line with every puts statement

# puts "hi"
# puts "world"
#---------------------------------------------------------------- 

# ways to comment stuff out... with #, like in python and then with =begin and =end

=begin
hsfbjsfhb
long comment
another comment
comments comments commentsssss
=end
#----------------------------------------------------------------

# print echos/prints to console/terminal on the same line

# print "hello"
# print " World" 
#----------------------------------------------------------------

# echoing statements to console

# x = 10
# y = 5
# z = x + y
# puts z

# x = "Hello "; y = "World"
# print x + y

# you can also puts or print variable by seperating them with a comma instead of printing them seperately
# x = "Please enter your name here"
# first_name = "Hannah "
# last_name = "Kingsolver"
# middle_name = "Nicole "
# puts x
# print first_name, middle_name, last_name
#-------------------------------------------------------------------

# first_name = "Hannah"
# last_name = "Kingsolver"

# puts "My first name is #{first_name} and my last name is #{last_name}"

# first_name = "Hannah"
# last_name = "Kingsolver"

# puts "My first name is %s and my last name is %s" % [first_name, last_name]
#---------------------------------------------------------------------
# you have to put '\' in front of the 2nd quotation so that ruby doesnt get confused
# '\n' puts a new line
#'\t' puts a new tab
# puts "I am 5'7\""
# puts "I\t am \t Hannah" # new tab
# puts "I \n am\n Hannah" # new line
#----------------------------------------------------------------------

#Anything in single quotes or double quotes is an instance of the class String.

# "I am a string"
# 'I am also a string'

#We can verify by using the .class function we saw earlier to check the class of the instance:

# "I am an instance of".class

#Using the quotations is just syntactic sugar for instantiating an instance of a String. We can create a String this way:

# String.new("I am an instance of the String class")

=begin
String Interpolation

So when should we use double quotes and when should we use single quotes? Is there even a difference? In most cases, it doesn't matter if we use single quotes or double quotes. However, one key difference is that  we cannot perform string interpolation on single quotes. What is string interpolation? It is an easier way to concat two objects to produce a string, even if one of the objects is not a string.

ex:

"24 plus 8 is #{24 + 8}"         # => "24 plus 8 is 32"
'24 plus 8 is #{24 + 8}'         # => "24 plus 8 is #{24 + 8}"
"24 plus 8 is " + (24 + 8).to_s  # => "24 plus 8 is 32"
Notice that if we do not use string interpolation, we have to convert the result of 24 + 8 into a string before adding it to the string using the to_s method. If we don't convert the number into a string, our code will return a TypeError.

"24 plus 8 is " + (24 + 8) # => TypeError: no implicit conversion of Fixnum into String
=end
# x = "Hi my name is Hannah"

# puts x.downcase
# puts x.include? "name"
# puts x.empty?
# puts x.length
# puts x.split
# puts x.split("")
# puts x[0]
#------------------------------------------------------------------------
=begin
Beware the Bang!
In most programming languages, primitive datatypes like integers and strings are immutable. In Ruby, however, strings are actually mutable. Let's look at an example:
=end
# str = "bar"
# str[0] = "c"
# puts str # => "car"

#Now, with methods that appear to change the value of the string, they will return a shallow copy of the string unless we have a bang (exclamation point) attached to the end of the method name.

# word = "hello"
# word.capitalize # => "Hello"
# puts word # => "hello"
# word.capitalize! # => "Hello"
# puts word # => "Hello

#Notice that when we invoked the capitalize method, it returns a copy of the string with the first letter capitalized but it doesn't actually update the original string. If you want to change the value of the original string, you must attach the bang.
#--------------------------------------------------------------------------
                                #CONDITIONALS

#Conditionals in Ruby are similar to other languages. Let's say we are bouncers at a dance club. Our job is to let people in if their age is greater than or equal to 21.

# age = 22
# if age >= 21
#     puts "Welcome to the party"
# else
#     puts "Not yet"
# end
# If something is true, the first part of the statement will run, otherwise the else statement gets triggered. We can have multiple if-else statements. A couple of key differences are that Ruby uses the term 'elsif' instead of 'else if' or 'elif in python, and we must add the end keyword after every conditional block.

# number = 15
# if number % 3 == 0 && number % 5 == 0
#     puts "FizzBuzz"
# elsif number % 3 == 0
#     puts "Fizz"
# elsif number % 5 == 0
#     puts "Buzz"
# end

# Sometimes we want to do something if something is not true. For example, we can take our previous bouncer example and rewrite it this way:
# age = 22
# if !(age < 21)
#     puts "Welcome to the party"
#     else
#     puts "Not yet"
#     end

# This is quite hard to read. Don't worry, Ruby makes this kind of statement beautiful with unless:
# age = 20
# unless age < 21
#     puts "Welcome to the party"
# else
#     puts "Rejected"
# end
# If statements runs the command once the condition is true. unless statement is the negated if statement. It is the same as if not. Try reading out your unless statements like this:

# Unless the client's age is less than 21 let them in, else reject them at the door.
#--------------------------------------------------------------------------------------
                                    #NIL
# We combine if and else statements with an expression that evaluates to true or false. In Ruby, only two things are false: nil and false. What does this mean? This means that an empty string returns true.

# Positive energy
# if ""
#     puts "I am positive"
# end
# if 0
#     puts "I am positive"
# end

# unless nil
#     puts "I am negative"
# end
# unless false
#     puts "I am negative"
# end

# Inline Conditionals
# We can write an if/unless statement in one line. So beautiful.
# puts "I am positive" if "hello"
# puts "I am positive" if 24
# puts "I am negative" unless nil
# puts "I am negative" unless false
#-----------------------------------------------------------------------------
                                    #LOOPS
#While Loop
# i = 0
# num = 5
# while i < num do
#     puts "Inside the loop i = #{i}"
#     i +=1
# end

# If you want to escape out of the while loop before it's completed, you can use break:
# i = 0
# num = 5
# while i < num do
#     puts "Inside the loop i = #{i}"
#     i += 1  
#     break if i == 2  
# end

# Try this out on a separate ruby file, once i reaches two, the while loop will stop.

#For Loop
# for i in 0..5 
#     puts "Value of local variable is #{i}" 

#     puts "i is now 3!!!" if i == 3
# end

#We can use break to stop a for loop before it reaches the end, the same way we would with a while loop.
# for i in 0..5 
#     puts "Value of local variable is #{i}" 
#     break if i == 2
# end

#Another useful method is next. We'll use next, if instead of terminating the for loop, we want to just skip to the next index.

# for i in 0..5 
#     next if i == 2
#     puts "Value of local variable is #{i}"   
# end 

#As you get to know more about Ruby, you'll learn that you'll rarely use a traditional for loop to do what you want.
#---------------------------------------------------------------------------------------
                                    #METHODS
# Ruby methods are very similar to functions in any other programming language. We can define a method by using the following syntax.
# def hello_world
#     puts "hello world"
# end
# hello_world 

#The Breakdown
#When we want to define a new method we use the def keyword, followed by the name of the method we want to create.

# To follow best practice, our method names use snake_case. This means that the names are always lower-cased and separated by an underscore. Parenthesis are optional in Ruby.

# Inside of our method we have added some simple logic that outputs "hello world" to the console. After our logic is defined, just like we do for if blocks, we must end our method block with the end keyword.

# After we're done defining our method, we're free to invoke it. Similar to when we defined our method, parentheses are also optional when we invoke our methods.

#INPUT 

# def say_hello name1, name2
#     puts "hello, #{name1} and #{name2}"
# end
# say_hello "hannah", "tanner" # => "hello, hannah and tanner"

# #We can pass parameters into a function the same way we would in any other language. For a function with a lot of parameters, feel free to use parenthesis for readability.
# def say_hello(name1, name2)
#     puts "hello, #{name1} and #{name2}"
# end
# say_hello("oscar", "eduardo") # => "hello, oscar and eduardo"

# Default Parameters
# When we want to add default values for our parameters, we can use the syntax below:
# def say_hello name1="oscar", name2="shane"
#     puts "hello, #{name1} and #{name2}"
# end
# say_hello     # => "hello, oscar and shane"

#Output
# Default Return
# In Ruby, we don't always need to specify what we are returning with the return keyword. By default, Ruby will return whatever was evaluated last. Remember that the puts method returns nil, so let's change our example a little.

# def say_hello name1="oscar", name2="shane"
#     "hello, #{name1} and #{name2}"
# end
# puts say_hello "oscar", "eduardo"   # => "hello, oscar and eduardo"

# Regular Return Statements

# However, if we need to escape a function early, the return behaves normally.
# def say_hello name1, name2
#     if name1.empty? or name2.empty?
#         return "Who are you?!"
#     end
#     # Doesn't reach the last line because we used return
#     "hello, #{name1} and #{name2}"
# end
# puts say_hello "", "" 
#-------------------------------------------------------------------------------
