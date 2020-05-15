# x = {"first_name" => "Coding", "last_name" => "Dojo"}

# puts "First Name: #{x["first_name"]}"
# puts "Last Name: #{x["last_name"]}"

# puts "your last name is Dojo" if x["last_name"].eql? "Dojo"

# new way
# user = {first_name: "Coding", last_name: "Dojo"}
# puts user[:first_name]
# puts user[:last_name]

# user.delete :last_name
# puts user

# user1 = {first_name: "Coding", last_name: "Dojo"}
# puts user1.has_key? :first_name

# user2 = {first_name: "Coding", last_name: "Dojo"}
# puts user2.has_value? "Coding"
# puts user2.has_value? "Bootcamp"

new_hash = {first_name:"Hannah", last_name:"Kingsolver", age: 22}
new_hash.delete(:age)
print new_hash
new_hash.empty? #nil
puts new_hash.has_key?(:first_name) # ---> true
puts new_hash.has_key?(:age) # ---> false bc we deleted it
puts new_hash.has_key?(:dad) #---> false
puts new_hash.has_value? "Hannah" #---> true
puts new_hash.has_value? "mom" #----> returns false
puts new_hash.has_value? 22 # ---> true
puts new_hash.has_value? "22" #----> returns false