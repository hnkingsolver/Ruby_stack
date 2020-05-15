class BankAccount
    # your code here
    @@numberOfAccounts =0
    def initialize
        @accountNumber = generateAccount
        @checking = 0
        @savings = 0
        @interest_rate = 0.01
        @@numberOfAccounts += 1
    end

    def account_number
        puts @accountNumber
        self
    end

    def checking_balance
        puts @checking
        self
    end

    def savings_balance
        puts @savings
        self
    end

    def deposit(account,amount)
        if account == "checking"
            @checking += amount
            self
        elsif account == "savings"
            @savings += amount
            self
        else 
            puts "bruh whatchu tryna do???"
        end
    end

    def withdraw(account,amount)
        if account == "checking"
            withdrawChecking(amount)
        elsif account == "savings"
            withdrawSavings(amount)
        else
            puts "Wrong account type"
        end
    end

    def total
        puts @checking + @savings
        self
    end

    def account_information
        puts "Your accounts number is #{@accountNumber}"
        puts "Your total money is #{@savings + @checking}"
        puts "Your checking balance is #{@checking}"
        puts "Your savings balance is #{@savings}"
        puts "Your interest rate is #{@interest_rate}"
        puts "There is #{@@numberOfAccounts} at this bank"
        self
    end

    private
    def generateAccount
        save = rand(1..5000)
    end

    def withdrawChecking(amount)
        if @checking >= amount
            @checking -= amount
            puts "Withdrew #{amount}, new checking total is #{@checking}"
            self
        else
            puts "Insufficient Funds, current checking total is #{@checking}"
            self
        end
    end

    def withdrawSavings(amount)
        if @savings >= amount
            @savings -= amount
            puts "Withdrew #{amount}, new savings total is #{@savings}"
            self
        else
            puts "Insufficient Funds, current savings total is #{@savings}"
            self
        end
    end
end

hannah = BankAccount.new
hannah.deposit('checking',100).deposit('savings',100).withdraw("checking",50)
devin = BankAccount.new
devin.account_information
#hannah is an example of an object instance, object instances can access public functions, but not private fuctions
