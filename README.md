## ATM Challenge Craft Academy Week 1

### Problem Statement
Bank customers, in need of cash, would benefit from being able to get cash in a quick yet secure way. Getting cash should be possible without limitations of Bank office opening hours.

### User Stories
* As a customer,
in order to withdraw money,
I need to have an account.
- Define account class
- Define customer class

* As a customer,
in order to have a safe withdrawal,
I need my account to have a pin.
- Give a pin instance variable to the account class

* As an ATM,
in order to perform a safe withdrawal,
I need to request a pin from the
customer and check its validity.
- Define ATM class
- Define a withdraw method for the ATM class
- Give the withdraw method the pin parameter from the account class
- Withdraw method should output a message depending on the validity of the pin

* As a customer,
in order to withdraw money,
I must enter an amount at will.
- Pass the amount as argument to the withdraw method

* As an ATM,
in order to give out the desired amount,
I must verify if the customer has an active account.
- Give the account_status instance variable to the account class
- Pass the account_status as an argument to the withdraw method
- Create a new private method under the ATM class to check the account_status

* As an ATM,
in order to give out the desired amount,
I must have enough funds.
- Create an instance variable funds for the ATM class that equals the maximum amount the ATM can hold
- Create a private method under the ATM class to check the ATM funds at any given moment

* As an ATM,
in order to give out the desired amount,
I must verify if the customer has enough funds in his account.
- Give the account class the balance instance variable
- Create a private method under the ATM class that checks the account balance

* As an ATM,
in order to inform the customer,
I need to display a message in all instances.
- Write a case statement inside the withdraw method
- Add a when condition inside the case statement that determines the message for insufficient_funds_in_account
- Add a when condition inside the case statement that determines the message for insufficient_funds_in_ATM
- Add a when condition inside the case statement that determines the message for incorrect_pin
- Add a when condition inside the case statement that determines the message for card_expired
- Add a when condition inside the case statement that determines the message for account_disabled
- Add a when condition inside the case statement that determines the message for successful_transaction

* As an ATM,
in order to dispense cash,
I need to know how many and what kind of reserves I have available at the
moment.

* As an ATM,
in order to dispense cash,
I need to give out the desired amount in 20, 10 & 5 bills.











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


[DONE] As a User       
 In order to make an withdrawal     The ATM needs to have funds
 * Need to have an ATM class
 * ATM needs to have funds
 * ATM can give up to $1000
 * Need to have a withdraw method

 As a User               
In order to know if my withdrawal was successful or unsuccessful      I want to receive a message with my withdrawal details
* Boolean method that determines if withdrawal is successful
* Method that creates status message
* Method that defines the banknotes withdrawn
* Details have to be generated in a hash

As an ATM operator          
In order for the right person to make a withdrawal            
I want each person to have an separate account
* Create Account class


As a ATM operator           
In order ensure that an Acccount holder can only withdraw funds that he has balance for           
I want to allow a withdrawal only if there are sufficient funds in the account

As a ATM operator
In order for our costumers to withdraw funds
I need make sure that we only allow withdrawals if there are funds available

As a Customer              
In order to keep my funds secure        I want a secure Pin code & an expiry date on my card that allows only me access to my funds

As an Bank Customer    
In order to withdraw funds in even amounts  
I want to receive funds in 5, 10 & 20$ bills

