def guess_number guess
    number = 25
    if guess > number
        return "Too high!"
    elsif guess < number
        return "Too low!"
    else guess = number
        return "You got it!"
    end
end 
puts guess_number 50
puts guess_number 25
puts guess_number 1