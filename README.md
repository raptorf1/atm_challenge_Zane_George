## ATM Challenge Craft Academy Week 1

The following objectives must be met:

    An ATM machine can hold up to $1000
    Withdrawal can be cleared only if:
        The ATM holds enough funds
        The amount is divisible by 5
        The person attempting the withdrawal provides a valid ATM card
        Valid pin and expire date
        Card status must be active (Not report stolen or lost)
        The person attempting the withdrawal has sufficient funds on his account
    There are only $5, $10 and $20 bills in the ATM. Withdrawals for amounts not divisible by 5 must be rejected.
    Upon a successful withdrawal the system should return a receipt with information about the date, amount and bills that was dispatched. (The receipt should be presented in the form of a Hash.



As a programmer
In order to work in a test driven way
I want to unit test my code


As a User       
 In order to make an withdrawal      
 The ATM needs to have funds
 * Need to have an ATM class
 * ATM needs to have funds
 * ATM can give up to $1000
 * Need to have a withdraw method

 As a User               
In order to know if my withdrawal was successful or unsuccessful               
I want to receive a message with my withdrawal details
* Boolean method that determines if withdrawal is successful
* Method that creates status message
* Method that defines the banknotes withdrawn
* Details have to be generated in a hash