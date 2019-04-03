class Account
    attr_accessor :pin_number, :exp_date
    STANDARD_VALIDITY_YRS = 5

    def initialize
        @pin_number = rand(1000..9999)
        @exp_date = set_expire_date
    end

    def set_expire_date
        stringedDate = Date.today.next_year(STANDARD_VALIDITY_YRS).to_s
        stringedDate[5]+stringedDate[6]+"-"+stringedDate[2]+stringedDate[3]
    end


end