# Project Title

<p>ATM Challenge_Craft Academy Week 1.</p>
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
 In order to make an withdrawal      
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
I want each person to have an separate account
```

```
As an ATM operator           
In order ensure that an Acccount holder can only withdraw funds that he has balance for           
I want to allow a withdrawal only if there are sufficient funds in the account
```

```
As a ATM operator
In order for our costumers to withdraw funds
I need make sure that we only allow withdrawals if there are funds available
```

```
As a Customer              
In order to keep my funds secure             
I want a secure Pin code & an expiry date on my card that allows only me access to my funds
```

```
As a ATM operator             
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
As a ATM operator      
In order to keep track of our costumers     
We want to assign each account to a separate person
```

# Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on your Interactive Ruby Shell (IRB) system.

### Prerequisites

What things you need to install the software and how to install them

```
Give examples
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Kudos to PurpleBooth for the README template [ https://gist.github.com/PurpleBooth/109311bb0361f32d87a2]
* Hat tip to anyone whose code was used
* Inspiration
* etc


