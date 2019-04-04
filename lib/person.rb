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

    

end