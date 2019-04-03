class Account
    attr_accessor :pin_number

    def initialize
        @pin_number = rand(1000..9999)
    end


end