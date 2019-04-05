class Atm
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, pin_number, account)
        case
        when insufficient_funds_in_account?(amount, account)
            {status: false, message: "insufficient funds", date: Date.today.strftime("%d/%m/%y")}
        when insufficient_funds_in_ATM?(amount, funds)
            {status: false, message: "insufficient funds in ATM", date: Date.today.strftime("%d/%m/%y")}
        when incorrect_pin?(pin_number, account.pin_number)
            {status: false, message: "wrong pin", date: Date.today.strftime("%d/%m/%y")}
        when card_expired?(account.exp_date)
            {status: false, message: "card expired", date: Date.today.strftime("%d/%m/%y")}
        when not_divisible_by_5?(amount)
            {status: false, message: "Amount must be a multiple of 5", date: Date.today.strftime("%d/%m/%y")}
        when account_disabled?(account.account_status)
            {status: false, message: "account disabled", date: Date.today.strftime("%d/%m/%y")}
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

    def not_divisible_by_5?(amount)
        amount % 5!= 0
    end
        
    def perform_transaction(amount, account)
        @funds -= amount
        account.balance -= amount
        {status: true, message: "success", date: Date.today.strftime("%d/%m/%y"), amount: amount, bills: banknotes(amount)}
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
