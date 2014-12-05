## Wine Cellar

Someone with disposable income has hired you to manage his or her wine cellar. They have provided you with data with which you can start.

#### Exercise Objectives

- build muscle memory for working with Ruby's primary data structures, the Array and the Hash
- gain familiarity with the official Ruby docs
  - [Ruby Array Documentation](http://www.ruby-doc.org/core-2.1.5/Array.html)
  - [Ruby Hash Documentation](http://www.ruby-doc.org/core-2.1.5/Hash.html)

#### Directions
1. Work in the `wine_cellar.rb` file. There, you will find a variable, `wine_cellar`, that holds an array of hashes, each hash representing a wine. 
1. Create a variable called `saved_for_special_occasion`. Assign it the third hash from the `wine_cellar` array (a Sauvignon Blanc from Wairau River).
1. Create a variable called `swill`. Assign it the fourth hash from the `wine_cellar` array (a Merlot from Tangley Oaks).
1. Your client misentered his data! Change the color of the Rutherford Hill Chardonney from "red" to "white".
1. Add a wine of your choice to the back of the cellar. Structure this wine as a hash, with key-value pairs for `:color`, `:type`, and `:label`.
1. Write a method, `retrieves_random_wine_for_party` which __removes__ a random wine from the cellar. Then use it several times, until you feel that the people upstairs are having a good time.


