# Bank tech test

In this project, I am building a program which can keep track of deposits, withdrawals and print a bank statement using IRB as the interface. The data will be stored internally without a database for the purpose of the project.

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

#### Approach and structure of my code

For this project, I aimed to write code following the single responsibility principle and encapsulation. I used the TDD procedure to drive my code and decided to use 4 classes with dependency injection to allow them to talk to one another.

I have included a printer class and a date of transaction class to remove the need of these responsibilities from the statement class.

I broke down each method into less than 5 lines and had no class longer than 30. This suggested the principles were followed as well as keeping my code clean.

#### User stories

```
As an Account owner,
So I can add money to my account,
I want to be able to deposit funds.
```

```
As an Account owner,
So I can access my money,
I want to be able to withdraw money from my account.  
```

```
As an Account owner,
So I can check my in and out goings,
I want my account activity to be saved with the date of the transaction.
```

```
As an Account owner,
So I can keep track of my spending,
I want to be able to view my bank statement.
```

#### Example of use in IRB

Clone this repo then using IRB:

```
2.5.1 :001 > require './lib/Account'
 => true
2.5.1 :002 > my_statement = Statement.new
 => #<Statement:0x00007f9968075bf8 @transactions=[]>
2.5.1 :003 > my_account = Account.new(my_statement)
 => #<Account:0x00007f99691885a8 @balance=0, @statement=#<Statement:0x00007f9968075bf8 @transactions=[]>>
2.5.1 :004 > my_account.deposit(1000)
 => "You have successfully deposited £1000. Your balance is now £1000."
2.5.1 :005 > my_account.withdraw(550)
 => "You have successfully withdrawn £550. Your balance is now £450."
2.5.1 :006 > my_account.deposit(1000)
 => "You have successfully deposited £1000. Your balance is now £1450."
2.5.1 :007 > my_statement.print
Date || Deposits || Withdrawals || Balance
11/03/19 || 1000 || 0 || 1000.
11/03/19 || 0 || 550 || 450.
11/03/19 || 1000 || 0 || 1450.
```

If there are insufficient funds to withdraw:

```
2.5.1 :003 > my_account.deposit(10)
 => "You have successfully deposited £10. Your balance is now £10."
2.5.1 :004 > my_account.withdraw(25)
RuntimeError (Insufficient funds.)
```
