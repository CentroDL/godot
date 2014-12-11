## The Caesar Cipher

From Wikipedia:

> In cryptography, a Caesar cipher is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. The method is named after Julius Caesar, who used it in his private correspondence.

We're going to implement a simple Caesar Cipher called ROT13 ("rotate by 13 places"). The transformation can be represented by aligning two alphabets, like so:

```
Plain:    abcdefghijklmnopqrstuvwxyz
Cipher:   nopqrstuvwxyzabcdefghijklm
```

ROT13 is its own inverse; that is, to undo ROT13, the same algorithm is applied, so the same action can be used for encoding and decoding. The algorithm provides virtually no cryptographic security, and is often cited as a canonical example of weak encryption. ROT13 is used in online forums as a means of hiding spoilers, punchlines, puzzle solutions, and offensive materials from the casual glance.

__Example usage of ROT13:__

```ruby
Cipher.encode("hello")
# => "uryyb"

Cipher.encode("peter")
# => "crgre"
```

## Directions:

For the class `Cipher`, implement a class method `encode` that takes a word as an argument and returns its ciphertext using ROT13.

Plan first. Write out step by step, in plain English, what needs to happen.

## Bonus

Expand your Ruby method so that it can take a string with spaces, allowing you to encode and decode entire sentences, not just words.
