class Human
    # your code here
    attr_accessor :health, :stealth, :intelligence, :strength #automatically setting up getters and setters for instance variables
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(object)
        if object.class.ancestors.include? Human
            object.health -= 10
        end
        self
    end
end
hannah = Human.new
tanner = Human.new
# hannah.attack(tanner)
# puts tanner.health