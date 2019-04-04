class Atm
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, pin_number, account)
        case
        when insufficient_funds_in_account?(amount, account)
            {status: false, message: "insufficient funds", date: Date.today}
        when insufficient_funds_in_ATM?(amount, funds)
            {status: false, message: "insufficient funds in ATM", date: Date.today}
        when incorrect_pin?(pin_number, account.pin_number)
            {status: false, message: "wrong pin", date: Date.today}
        when card_expired?(account.exp_date)
            {status: false, message: "card expired", date: Date.today}
        when account_disabled?(account.account_status)
            {status: false, message: "account disabled", date: Date.today}
        else
            perform_transaction(amount, account)
        end
    end

    private

    def insufficient_funds_in_account?(amount, account)
        amount > account.balance
    end

    def insufficient_funds_in_ATM?(amount, funds)
        amount > @funds
    end

    def incorrect_pin?(pin_number, actual_pin)
        pin_number != actual_pin
    end

    def card_expired?(exp_date)
        Date.strptime(exp_date, "%m/%y") < Date.today
    end

    def account_disabled?(account_status)
        account_status == :disabled
    end
    
    def perform_transaction(amount, account)
        @funds -= amount
        account.balance -= amount
        {status: true, message: "success", date: Date.today, amount: amount, bills: banknotes(amount)}
    end

    def banknotes(amount)
        denominations = [20, 10, 5]
        bills = []
        denominations.each do |bill|
            while amount - bill >= 0
                amount -= bill
                bills << bill
            end
        end
        bills
    end

end
