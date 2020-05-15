require_relative 'human'
class Wizard < Human
    # your code here
    def initialize
        @health = 50
        @intelligence = 25
        super()
    end

    def heal
        @health += 10
        self
    end

    def fireball(object)
        if object.class.ancestors.include? Human
            object.health -= 20
        end
        self
    end
end

Hermione = Wizard.new
hannah = Wizard.new
Hermione.fireball(hannah)
Hermione.fireball(hannah)
puts hannah.health
