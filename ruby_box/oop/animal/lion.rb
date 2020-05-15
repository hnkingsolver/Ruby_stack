require_relative 'mammal'
class Lion < Mammal
    def initialize 
        super()                     #calls parent method
        @health = 170
    end

    def fly
        @health -= 10
        self
    end

    def attack_town
        @health -= 50
        self
    end

    def eat_humans
        @health += 20
        self
    end

    def display_health
        puts 'Lion health'
        super()                     #calls parent method
    end
    

end

newLion = Lion.new
newLion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health