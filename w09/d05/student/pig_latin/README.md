## Pig Latin

I've created a `Word` class within [`lib/word.rb`](lib/word.rb) that is just a wrapper for a string. Your task is to define an instance method `Word#piglatinize` that returns the piglatin equivalent of the word. Tests have been written for you within [`spec/word_spec.rb`](spec/word_spec.rb)

Description of the rules from Wikipedia:

For words that begin with vowel sounds or silent letter, "way" is added at the end of the word. Examples are:

* "egg" → "eggway"
* "inbox" → "inboxway"
* "eight" → "eightway"

For words that begin with consonant sounds, the initial consonant or consonant cluster is moved to the end of the word, and "ay" is added, as in the following examples:

* "happy" → "appyhay"
* "duck" → "uckday"
* "glove" → "oveglay"

#### Directions

1. Run the pre-written test suite by running `rspec` within the piglatin directory.
1. Examine the error.
1. Write just enough code to make the error go away. Work within [`lib/word.rb`](lib/word.rb).
1. Repeat steps 1 - 3 until all the specs pass.
1. Don't give up.

#### Bonus 1

The letter 'y' can play the role of either consonant or vowel, depending on its location:

* "yellow" → "ellowyay"
* "rhythm" → "ythmrhay"

#### Bonus 2

How do you deal with words starting with "qu" or "squ" ?

* "queen" → "eenquay"
* "squeal" → "ealsquay"
