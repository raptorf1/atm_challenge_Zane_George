# Project Title

<p>ATM Challenge - Craft Academy Week 1.</p>
<p>Simple implementation of an actual ATM with the use of the Ruby language. Only to be run on an Interactive Ruby Shell.</p>

# Problem Statement
Bank customers, in need of cash, would benefit from being able to get cash in a quick yet secure way. Getting cash should be possible without limitations of Bank office opening hours.

# Objectives

* An ATM machine can hold up to $1000
* Withdrawal can be cleared only if:
    1. The ATM holds enough funds
    2. The amount is divisible by 5
    3. The person attempting the withdrawal provides a valid ATM card with valid pin and expire date
    4. Card status must be active (not report stolen or lost)
    5. The person attempting the withdrawal has sufficient funds on his account
* There are only $5, $10 and $20 bills in the ATM. Withdrawals for amounts not divisible by 5 must be rejected.
* Upon a successful withdrawal the system should return a receipt with information about the date, amount and bills that was dispatched. The receipt should be presented in the form of a Hash.

# User Stories

```
As a programmer
In order to work in a test driven way
I want to unit test my code
```

```
 As a User       
 In order to make a withdrawal      
 The ATM needs to have funds
 ```

 ```
As a User               
In order to know if my withdrawal was successful or unsuccessful               
I want to receive a message with my withdrawal details
```

```
As an ATM operator          
In order for the right person to make a withdrawal            
I want each person to have a separate account
```

```
As an ATM operator           
In order ensure that an Acccount holder can only withdraw funds that he has balance for           
I want to allow a withdrawal only if there are sufficient funds in the account
```

```
As an ATM operator
In order for our costumers to withdraw funds
I need make sure that we only allow withdrawals if there are funds available
```

```
As a Customer              
In order to keep my funds secure             
I want a secure Pin code & an expiry date on my card that allows only me access to my funds
```

```
As an ATM operator             
In order to allow access active customers             
I want to allow withdrawals from only active accounts
```

```
As an Bank Customer    
In order to withdraw funds in even amounts  
I want to receive funds in 5, 10 & 20$ bills
```

```
As a Customer
In order to manage my funds
I need to have a personal account
```

```
As an ATM operator      
In order to keep track of our customers     
We want to assign each account to a separate person
```

# Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on your Interactive Ruby Shell (IRB) system.

# Prerequisites

* You will need Ruby installed on your system.
* You will need Bundler installed on your system.
* You will need IRB installed on your system.


# Installing

* Run your IRB

`irb`
 
* Require Date constant

```ruby
require "date"
```

* Load the person.rb file

```ruby
load "../lib/person.rb"
```

* Load atm.rb and account.rb files

```ruby
load "../lib/atm.rb"
```

```ruby
load "../lib/account.rb"
```

# Running the tests

After you fork the repository, run `bundle install` in your Terminal and make sure you are in the project folder. That should install RSPEC on your computer.

Then, from your Terminal go to the project folder and run `rspec`.

# Deployment

To create a person, run 

```ruby
person = Person.new(name: "    ")
```

To create an accounf for a person, run

```ruby
person.create_account
```

To deposit money on the account of the person, run

```ruby
person.deposit(amount)
```

To create an ATM, run

```ruby
atm = Atm.new
```

To withraw funds, run

```ruby
person.withraw_funds(amount:  , pin:  , atm: atm)
```

# Built With

[Ruby](https://www.ruby-lang.org/en/) - The worlds best programming language.

# Tested With

[RSPEC](http://rspec.info) - Making TDD Productive and Fun.

[Pry](https://pryrepl.org) - Pry is a powerful alternative to the standard IRB shell for Ruby.

# Authors

* **Zane Neikena** - [zanenkn](https://github.com/zanenkn)
* **George Tomaras** - [raptorf1](https://github.com/raptorf1)

# License

* **MIT** - https://opensource.org/licenses/MIT

# Acknowledgments

Kudos to PurpleBooth for the README template https://gist.github.com/PurpleBooth/109311bb0361f32d87a2
