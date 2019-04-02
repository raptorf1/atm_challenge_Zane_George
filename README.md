## ATM Challenge Craft Academy Week 1

### Problem Statement
Bank customers, in need of cash, would benefit from being able to get cash in a quick yet secure way. Getting cash should be possible without limitations of Bank office opening hours.

### User Stories
* As a customer,
in order to withdraw money,
I need to have a card.
* As a customer,
in order to have a safe withdrawal,
I need my card to have a pin.
* As a customer,
in order to withdraw money,
I must enter an amount at will.
* As an ATM,
in order to give out the desired amount to the correct customer,
I must verify the validity of the customer's pin number.
* As an ATM,
in order to give out the desired amount,
I must verify if the customer has an active account.
* As an ATM,
in order to give out the desired amount,
I must have enough funds.
* As an ATM,
in order to give out the desired amount,
I must verify if the customer has enough funds in his account.
* As an ATM,
in order to inform the customer,
I need to display a message in all instances.











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
In order to keep my funds secure             
I want a secure Pin code & an expiry date on my card that allows only me access to my funds


