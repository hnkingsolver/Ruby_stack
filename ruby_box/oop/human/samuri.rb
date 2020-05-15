require_relative "human"
class Samurai < Human       #class Samuri.. but takes up after Human
    # your code here
    @@no_of_us = 0
    def initialize          
        @health = 200  
        @@no_of_us += 1          # inherit from human with super()
        super()
    end

    def death_blow(object)
        if object.class.ancestors.include? Human
            object.health = 0
        end
        self
    end

    def meditate
        @health = 200
        self
    end

    def how_many
        puts @@no_of_us
    end
end

jackie = Samurai.new
hannah = Samurai.new
jackie.death_blow(hannah)
puts hannah.health