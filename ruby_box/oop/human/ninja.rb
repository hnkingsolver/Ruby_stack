require_relative 'human' # i want to be able to access all of the class and instance variables
class Ninja < Human
    # your code here
    def initialize          
        @stealth = 175             # inherit from human with super()
        super()
    end

    def steal(object)
        attack(object)       #method from human class... we are calling that function inside our method
        @health += 10
        self
    end

    def get_away
        @health -= 15
        puts "Got away safely!"
    end
end

bruce = Ninja.new #creates new ninja.... ".new" always looks for "def initialize and creates a new ninja with all the attributes from the Human class and whatever we decide to change within those attributes"
chuck = Ninja.new
bruce.steal(chuck)
puts chuck.health
puts bruce.health
chuck.get_away
puts chuck.health

#YASSSS BISHHHH IT WORKS 