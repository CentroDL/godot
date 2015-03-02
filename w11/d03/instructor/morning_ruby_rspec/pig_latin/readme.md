### Pig Latin

Your job will be to implement an instance method `Word#to_pig` that returns the pig latin equivalent of the word. The specs are written for you.

Description of the rules from Wikipedia:

For words that begin with vowel sounds or silent letter, "way" is added at the end of the word. Examples are

* "egg" → "eggway"
* "inbox" → "inboxway"
* "eight" → "eightway"

For words that begin with consonant sounds, the initial consonant or consonant cluster is moved to the end of the word, and "ay" is added, as in the following examples:

* "happy" → "appyhay"
* "duck" → "uckday"
* "glove" → "oveglay"


#### Bonus 1

The letter 'y' can play the role of either consonant or vowel, depending on its location

* "yellow" → "ellowyay"
* "rhythm" → "ythmrhay"

#### Bonus 2

How do you deal with words starting with "qu" or "squ" ?

* "queen" → "eenquay"
* "squeal" → "ealsquay"
