# ATM application

We 're going to build an application for keeping track of the our checking and savings account balances. You can play with an example of what a working version will do in the `example` folder.

## User Stories

- As a user, I want to deposit money into either of my bank accounts:
  checking and savings.
- As a user, I want to withdraw money from one of the bank accounts.
- As a user, I want to ensure that the balance in an account can't go negative.
  If I try to withdraw more money than exists in the account, I want the ATM to 
  ignore the transaction and alert me to my error.
- As a user, I want the color of my bank account to reflect its balance 
  (there's a CSS class called `zero` already written for this)!
- As a user, I want overdraft protection:
  - If a withdrawal can be covered by the balances in *both* accounts combined, 
    take the balance of the account withdrawn from down to $0 and take the rest 
    of the withdrawal from the other account. 
  - If the withdrawal amount is more than the combined account balance, follow 
    the process for an overdraft above.

## Necessities

1. Use a template for the ATM's HTML.
1. Create a single "view model" `AtmView` for ATMs, and give it a function
   `render` that creates the HTML.
1. Make sure the `AtmView` has an `amount` attribute that represents the amount
   of money in the view!
1. Make sure the `AtmView`'s `render` function references the internal `amount`
   attribute.