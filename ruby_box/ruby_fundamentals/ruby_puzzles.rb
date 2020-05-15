#1 Create an array with the following values: 
# 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
# arr = [3,5,1,2,7,9,8,13,25,32]

# puts arr.reduce(:+)  #.reduce is a sum operation can also use "{(0) |sum, n| sum + n } " instead of (:+)
# puts arr.find_all {|i| i>10}.inspect
#********************************************************************************************************
#2 Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

# arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher' ]
# puts "Printing shuffled array:"
# arr.shuffle.each{ |person| puts person}
# puts "Name longer than 5:"
# puts arr.find_all {|i| i.length > 5}.inspect # or use .select { |person| person.length > 5}
#********************************************************************************************************
#3 Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.

# arr = ("a".."z").to_a
# puts arr.shuffle!.inspect
# puts arr[0].inspect
# puts arr[25].inspect

# shuffled = arr.shuffle
# puts "#{shuffled.first} is a vowel" if arr[0].include?('a') || arr[0].include?('e') || arr[0].include?('i') || arr[0].include?('o') || arr[0].include?('u')
#********************************************************************************************************
#4 Generate an array with 10 random numbers between 55-100.
# arr = []
# 10.times { arr << rand(55..100) }
# print arr
#********************************************************************************************************
#5 Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value

# arr = []
# 10.times { arr << rand(55..100) }
# print arr.sort
# puts arr.min
# puts arr.max
#********************************************************************************************************
#6 Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

# str = ""
# 5.times { str << rand(65..90).chr }
# puts str
#********************************************************************************************************
#7 Generate an array with 10 random strings that are each 5 characters long
# arr = []
# 10.times do
# str = ""
# 5.times { str << rand(65..90).chr }
# arr << str
# end
# puts arr
