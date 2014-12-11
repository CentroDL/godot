# ElizaBot Solution
#
# The 'solution' to the ElizaBot Lab. Keep in mind that any solution
#   is just 'a' solution, and not 'the' solution. This solution also covers the
#   **bare minimum** to meet the specification given.
#

require 'colorize'

# ---
# Method Definitions
# ---

# Prompts the user by printing '>> ' to the screen, and waits for input.
#
# @return [String] the user's request.
def get_users_request
  print '>> '.yellow
  gets.chomp.downcase
end

# Returns an appropriate, randomized response for a given request type.
#
# @param type [Symbol] the type of request, `:interogation` or `:exclamation`
#   `:declaration` or `:unprocessable`.
# @return [String] the object converted into the expected format.
def a_response_to(type)
  responses = {
    :interogation => [
      "Oh well, I don't know if there's much I can say about that.",
      "Ha! You ask too much! Let's talk about you."
    ],
    :exclamation => [
      "NO!",
      "!!!!"
    ],
    :declaration => [
      "That's very interesting, tell me more.",
      "You really think so?",
      "Why do you think that is?"
    ],
    :about_me => [
      "Enough about me -- you're making me blush!",
      "I said enough about me... Take a hint."
    ],
    :unprocessable => [
      "Haha."
    ]
  }
  responses[type].sample
end

# Determines the type of request made by the user.
#
# @param request [String] the user's inputted request.
# @return [Symbol] the type of request.
def the_type_of(request)
  # Below we use a `case` statement (a type of if-else), which returns a value!
  message_type = case request[-1] # using the method #.[] with String...
  when "."; then :declaration     # using single-line `then` syntax...
  when "?"; then :interogation
  when "!"; then :exclamation
  else
   :unprocessable                  # using the implicit return of `case`...
  end
  message_type = :about_me if request.match('you') || request.match('eliza')
  message_type
end

# ---
# Our Program!
# ---

puts "Hi there, I'm Eliza! Let's have a chat.".green

loop do # analogous to `while true`...
  request = get_users_request.downcase
  exit if request.match("goodbye") # using the single-line `if` syntax...
  puts a_response_to(the_type_of(request)).green
end