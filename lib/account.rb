class Account
    attr_accessor :pin_number, :exp_date, :account_status
    STANDARD_VALIDITY_YRS = 5

    def initialize
        @pin_number = assign_pin
        @exp_date = set_expire_date
        @account_status = :active
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

    
end