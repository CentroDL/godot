# ShylockBot Solution
#
# The ShylockBot solution uses a new technique that we have not discussed
#   much in class: a 'global' variable. Keep in mind, as with the 'brain' from
#   FalstaffBot, that this variable (a hash) *could* be set as a normal variable
#   and passed to all of the methods that use it. It also uses a module to hold
#   our methods.
#

require 'colorize'

# ---
# Shared Data, aka ShylockBot's 'state'
# ---

# This 'global' variable (technically, one whose scope is set to the whole file)
#   will hold all of the data, known in programming as **the state** of our
#   ShylockBot...
$shylock = {
  :purse     => 10_000, # a fun way to make numbers more readable is to use underscores!
  :borrowers => {},
  :interest  => 0.35
}

# ---
# Method Definitions, aka ShylockBot's 'behavior'
# ---

# ---
# Here are ShylockBot's 'model' methods, ie those that make changes to the
#   'state' represented by $shylock. They do not print to the screen!
# ---

# Gets the history of a borrower's transactions from the ledger.
#
# @param [String] borrower the borrower's name.
# @return [Array<Float>] the borrower's transaction history.
def self.look_up_in_ledger(borrower)
  # Below is a fun new way to use Ruby's boolean operators. The implementation
  #   is complex (operators evaluate left to right, and return each value in
  #   order... if they must!), but the purpose is simple. It returns the first
  #   expression's (left operand's)  return value if it is 'truthy' (ie not
  #   nil or false), otherwise it returns the second.
  $shylock[:borrowers][borrower] || []
  # **THE ABOVE IS FUNCTIONALLY THE SAME AS:**
  #   if !$shylock[:borrowers][borrower].nil?
  #     return $shylock[:borrowers][borrower]
  #   else
  #     return []
  #   end
end

# Gets the current balance of a borrower's account from the ledger.
#
# @param [String] name the borrower's name.
# @return [Float] the borrower's current balance.
def self.calculate_balance_for(borrower)
  balance = 0
  look_up_in_ledger(borrower).each do |transaction|
    balance += transaction
  end
  balance
  # You can look up a faster way to do this, ie:
  #   look_up_in_ledger(borrower).reduce(:+)... How does this work?
end

# Lends money to a borrower.
#
# @param [String] name the borrower's name.
# @param [Float] amount the amount to be lent.
# @return [Array<Float>] the borrower's transaction history.
def self.lend_money(name, amount)
  $shylock[:purse] -= amount
  borrower = $shylock[:borrowers][name]
  $shylock[:borrowers][name] = [] if borrower.nil?
  $shylock[:borrowers][name] << amount # 'shovel'-style #push method!
end

# Charges all current debtors interest.
#
# @return [Array<Hash>] the ledger.
def self.charge_interest
  $shylock[:borrowers].each do |borrower, amounts|
    amount = calculate_balance_for(borrower) * $shylock[:interest]
    $shylock[:borrowers][borrower] << amount
  end
end

# Changes the current rate of interest.
#
# @param [Float] new_rate the new interest rate
# @return [Float] the old interest rate
def self.set_interest_rate(new_rate)
  old_rate = $shylock[:interest]
  $shylock[:interest] = new_rate
  old_rate
end

# Collects money from a borrower.
#
# @param [String] name the borrower's name.
# @param [Float] amount the amount to be collected.
# @return [Array<Float>] the borrower's transaction history.
def self.collect_money(name, amount)
  $shylock[:purse] += amount
  borrower = look_up_in_ledger(name)
  $shylock[:borrowers][name] = [] if borrower.nil?
  $shylock[:borrowers][name] << -amount
end

# ---
# Below here are ShylockBot's 'view' methods, ie those that use puts as side-
#   effects to print to the screen, and all should simply return 'true'.
# ---

# A method that structures what is printed to the console by ShylockBot's view
#   methods.
#
# @param [String] emotion a string printed in emoticon style, ie '::ShylockBot <param>::'
# @param [String] message optional a second string that is printed without the emoticons.
# @return [True]
def self.emotes_and_does(*input) # here we use a 'splat' -- a cool Ruby operator
                            #   that puts arguments into an array...
                            # we can call this method like:
                            #   `emotes_and_does('haha!','this is fun!')`
                            # and the argument internally looks like:
                            #   `['haha!','this is fun!']`
  output  = "  ::ShylockBot #{input[0]}::".green
  input.length > 1 ? output += "\n#{input[1]}".green : output
end

# Build a list of debtors from the ledger.
#
# @return [String] the list of debtors
def self.list_debtors
  accounts = ""
  $shylock[:borrowers].each_key do |borrower|
    accounts += "  '#{borrower}' owes me #{calculate_balance_for(borrower)} ducats\n"
  end
  accounts
end

# Build a response string for ShylockBot viewing his purse.
#
# @return [String] the response
def self.view_purse
  emotes_and_does("pulls out his purse", "  #{$shylock[:purse]} ducats")
end

# Build a response string for ShylockBot viewing his loans.
#
# @param [String] name the borrower's name.
# @param [Float] amount the borrower's current balance.
# @return [String] the response
def self.view_loan(name, amount)
  emotes_and_does("gives #{name} #{amount} ducats")
end

# Build a response string for ShylockBot viewing his ledger.
#
# @return [String] the response
def self.view_ledger
  emotes_and_does("pulls out his ledger", list_debtors.chomp)
end


# Build a response string for ShylockBot collecting interest.
#
# @return [String] the response
def self.view_interest
  interest = "collects interest at #{$shylock[:interest] * 100}%"
  emotes_and_does(interest, list_debtors.chomp)
end


# Build a response string for ShylockBot changing his interest rate.
#
# @param [Float] old the old interest rate
# @param [Float] new the new interest rate
# @return [String] the response
def self.view_interest_rate(old, new)
  emotes_and_does("adjusts his interest rate from " + \
    "#{old * 100}% to #{new * 100}%")
end


# Build a response string for ShylockBot collecting money.
#
# @return [String] the response
def self.view_collect_money
  emotes_and_does("opens his purse")
end

# ---
# Method Definitions, ie 'Helpers,' for our program
# ---

# Prompts the user by printing '>> ' to the screen, and waits for input.
#
# @return [String] the user's request.
def users_request
  print '>> '.yellow
  gets.chomp.downcase
end

# Routes the given user request to the correct ShylockBot behaviors.
#
# @param [String] the user's request.
# @return [String] the bot's response string to be printed.
def match_and_process(request)
  # Here we are going to see if the strings include the necessary parts, and
  #   then split them to find the relevant information. This would be easier done
  #   with Regular Expressions (ie, regexes) and a `case` statement:
  #
  # - [RegExp](http://www.ruby-doc.org/core-2.1.2/Regexp.html)
  # - [Rubular](http://rubular.com/)
  # - [NetTuts](http://code.tutsplus.com/tutorials/ruby-for-newbies-regular-expressions--net-19812)
  #
  if request == "purse"
    view_purse
  elsif request == "ledger"
    view_ledger
  elsif request == "goodbye"
    exit
  elsif request == "collect interest"
    charge_interest
    view_interest
  elsif request.include?("loan ") && request.include?(" ducats")
    request_array = request.split # break the request on spaces
    borrower = request_array[1]
    amount   = request_array[2].to_f
    lend_money(borrower, amount)
    view_loan(borrower, amount)
  elsif request.include?("set interest at ")
    new_rate = request.split[3].to_f / 100
    old_rate = set_interest_rate(new_rate)
    view_interest_rate(old_rate, new_rate)
  elsif request.include?("collect ") && request.include?(" ducats from ")
    request_array = request.split
    amount   = request_array[1].to_f
    borrower = request_array[4]
    collect_money(borrower, amount)
    view_collect_money
  else
    emotes_and_does("looks quizzical","  Nothing happens...")
  end
end

# ---
# Our Program!
# ---

puts "\nShylock enters stage left...\n".green

loop do
  puts match_and_process users_request
  # by using semantic (well-named) variables and removing parentheses,
  # we make this very readable!
end
