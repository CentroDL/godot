## Partying with HTTParty

Make sure you have the Ruby gem `httparty` installed

```
gem install httparty
```

The following example is adapted from the [docs here](https://github.com/jnunemaker/httparty)

```
# Use the class methods to get down to business quickly
require 'httparty'
response = HTTParty.get('https://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts response.body
puts response.code
puts response.message
puts response.headers.inspect
```
