require 'colorize'

#helper method to get input
def input
  $stdout.print(">>")
  $stdin.gets.chomp
end

#provides responses based on input
def respond(input)
 $stdout.puts( "::" + input + "::")
end

ducats = 10000
ledger = {}
interest = 0.35
history = []
#conversation loop
loop do

  command = input

  case command.split[0]

  when 'purse'
    respond('ShylockBot pulls out his purse')
    $stdout.puts ducats

  when 'loan'
    #loan name amount ducats
    debtor = command.split[1].capitalize
    amount = command.split[2].to_f
    time = Time.new


    if (ducats - amount) > 0
        respond("ShylockBot gives #{debtor} #{amount} ducats")
        ducats -= amount
        ledger[debtor] = amount
        $stdout.puts("- #{amount}".colorize(:red))
    else
      respond("Shylock bot doesn't have enough to lend #{amount} ducats. Only #{ducats} ducats left.")
    end

    log = {
      "Date:" => "#{time.month}/#{time.day}/#{time.year}",
      "Amount:" => "-#{amount}".colorize(:red),
      "Debtor:" => debtor,
      "Balance:" => ducats
    }

    history.push(log)

  when 'ledger'
    respond('ShylockBot pulls out his ledger')
    ledger.each { |name, debt| $stdout.puts("#{name} owes me #{debt} ducats.") }

  when 'collect'
    if command.split[1] == 'interest'
      respond("ShylockBot collects interest at #{interest}%")
      ledger.each { |name, debt| ledger[name] = debt*(1+interest)}
      ledger.each { |name, debt| $stdout.puts("#{name} now owes me #{debt.round(2)} ducats.") }
    else
      deduction = command.split[1].to_f
      name = command.split[4].capitalize
      ledger[name] -= deduction
      ducats += deduction
      respond("ShylockBot opens his purse")
      $stdout.puts("+ #{deduction}".colorize(:green))

      time = Time.new
      log = {
      "Date:" => "#{time.month}/#{time.day}/#{time.year}",
      "Amount:" => "+#{deduction}".colorize(:green),
      "Debtor:" => name,
      "Balance:" => ducats
      }

      history.push(log)

    end

  when 'set'
    old_interest = interest*100
    interest = (command.split[3].chomp('%').to_f)/100
    respond("Shylock adjusts his interest rate from #{old_interest}% to #{interest*100}%")

  when 'exit'
    respond('Goodbye')
    break

  when 'history'
    respond('Shylock clears his throat')
    history.each {|hash| hash.each {|key, value| puts "#{key} #{value}"}; puts "\n"}
  else
    respond('ShylockBot looks confused')

  end

  ledger.delete_if {|key, value| value <= 0 }

end
