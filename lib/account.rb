class Account
    attr_accessor :pin_number, :exp_date, :account_status, :owner, :balance
    STANDARD_VALIDITY_YRS = 5

    def initialize (attrs = {})
        @pin_number = assign_pin
        @exp_date = set_expire_date
        @account_status = :active
        @balance = 0
        set_owner(attrs[:owner])
    end

    def deactivate
        @account_status = :deactivated
    end

    


    private

    def set_expire_date
        stringedDate = Date.today.next_year(STANDARD_VALIDITY_YRS).to_s
        stringedDate[5]+stringedDate[6]+"-"+stringedDate[2]+stringedDate[3]
    end

    def assign_pin
        @pin_number = rand(1000..9999)
    end

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An account owner is required"
    end

    
end