class Person
    attr_accessor :name, :cash, :account

    def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account
    end

    
    def create_account
        @account = Account.new(owner: @name)
    end

    def deposit(money)
        @account == nil ? deposit_error : succesful_deposit(money)        
    end

    def withdraw_funds (arrg = {})
        if @account == nil then deposit_error
        elsif @account == :disabled then deposit_error
        else succesful_withdrawal(arrg)
        end
    end
    
        


    private

    
    def set_name(obj)
        obj == nil ? missing_name : @name = obj
    end    

    def missing_name
        raise "A name is required"
    end

    def deposit_error
        raise "No account present"
    end

    def succesful_deposit(money)
        @cash -= money
        account.balance += money
    end

    def succesful_withdrawal(arrg)
        arrg[:atm] == nil ? missing_atm : atm = arrg[:atm]
        pin_number = arrg[:pin]
        account = @account
        amount = arrg[:amount]
        response = atm.withdraw(amount, pin_number, account)
        response[:status] == true ? increase_cash(response) : response
        response
    end

    def increase_cash(response)
        @cash += response[:amount]
    end

    def missing_atm
        raise "An ATM is required"
    end

end