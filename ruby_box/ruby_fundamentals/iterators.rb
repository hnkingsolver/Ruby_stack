#1) .any? { |obj| block } => true or false

# puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 }
# puts %w[ant bear cat].any? { |word| word.length >= 4 }
# puts %w[ant bear cat].any? { |word| word.length >= 3 }
# puts %w[ant bear cat].any?(/d/)
# puts [nil, true, 99].any?(Integer)
#*******************************************************************
#2) .each => calls block once for each element in ruby self, passing that element as a block parameter.

# puts ["ant", "bear", "cat"].each { |word| print word, "--" }
# puts ["dog", "cat", "whale"].each {|word| puts word, "**********"}
#*******************************************************************
#3) .collect { |obj| block } => returns a new array with the results of running block once for every element in enum

# puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16] 1*1=1, 2*2=4, 3*3=9, 4*4=16, collects i*i 4 times
# puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"] collects cat 4 times

# a = [ "a", "b", "c", "d" ]
# puts a.collect { |x| x + "!" } #=> ["a!", "b!", "c!", "d!"]

# puts  ['a', 'b', 'c'].collect{|letter| letter.capitalize}
#*******************************************************************
#4) .detect/.find => returns the first for which block is not false.

# puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }  # => nil
# puts (1..100).find { |i| i %5 == 0 and i % 7 == 0 } # => 35
# puts (1..50).detect { |i| i % 5 == 0 and i % 2 == 0} # => 10
# puts (1..100).find { |i| i % 7 == 0 and i % 3 == 0} # => 21
#*******************************************************************
#5) .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false

# puts (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]
# puts (1..10).find_all { |i| i % 2 == 0 } # => [2, 4, 6, 8, 10]
# print (1..100).find_all { |i| i % 13 == 0 } # => [13, 26, 39, 52, 65, 78, 91]
#*******************************************************************
#6) .reject { |obj| block } => opposite of find_all

# puts (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
# puts (1..10).reject { |i| i % 2 ==0 } # =>  [1,3,5,7,9]
# puts (1..100).reject { |i| i % 2 == 0 } #all odd numbers
#*******************************************************************
#6) .upto(limit) => iterates block up to the int number
# puts 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
# puts 1.upto(10) { |i| print i*10, " "} # => 10 20 30 40 50 60 70 80 90 100
# puts 10.upto(20) { |i| print i*10, " "} # => 100 110 120 130 140 150 160 170 180 190 200