# Try the following methods at least once either on a separate Ruby file or on irb.

# .at or .fetch
# .delete
# .reverse
# .length
# .sort
# .slice
# .shuffle
# .join
# .insert
# values_at() -> returns an array with values specified in the param
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"

# a = ["hannah kingsolver", "tanner colley", "devin colley", "hannah segura"]
# b = [1,6,4,8,3,9,2,7]
# c = ["hannah kingsolver", 1]
# d = ["carole baskins, tiger king"]

# # #1 .at & .fetch

# puts a.at(0)
# puts b.at(0)

# puts a.fetch(1)
# puts a.fetch(3)
#--------------------------------------------------------------
#2 .delete

# a.delete("hannah kingsolver")
# puts a
# b.delete(6)
# puts b
#---------------------------------------------------------------
#3 .reverse & .reverse!

# a.reverse! <---- Reverses self in place.
# puts a

# x = ["a", "b", "c"]
# puts x.reverse  #Returns a new array containing self's elements in reverse order.
# puts b.reverse
#---------------------------------------------------------------
#4 .length

# puts a.length
# puts b.length
# puts c.length
# puts d.length
#---------------------------------------------------------------
#5 .sort

# puts a.sort
# puts b.sort
# puts d.sort
# puts a.sort{ |x,y| y <=> x}
#---------------------------------------------------------------
#6 .slice

# puts a[1] + a[2]
# puts a[5] #----> nil
# puts a[1,2]
# puts a[0..2]
# puts a[-2,2]
#---------------------------------------------------------------
#7 .shuffle

# puts a.shuffle
# puts b.shuffle
# puts c.shuffle
# puts d.shuffle
#---------------------------------------------------------------
#8 .join

# puts a.join("-")
# puts a.join(",")
# puts b.join("&")
# puts b.join("zzzzz")
# puts a.join
#---------------------------------------------------------------
#9 .insert

# puts a.insert(1,99)
# puts a.insert(4, "harry potter", "ron wesley")
# puts a.insert(-1, "hermione grainger", "jenny wesley", "luna lovegood") -1 is the last index.. -2 is 2nd to last
#---------------------------------------------------------------
#9 values_at

# puts a.values_at(0,1,3)
# puts b.values_at(0, 2, 4)