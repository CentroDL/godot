# >> user input
# :: ShylockBots emotions ::
# Return Value

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

#conversation loop
loop do

  command = input

  case command.split[0]

  when 'purse'
    respond('Shylock pulls out his purse')
    $stdout.puts ducats

  when 'loan'
    #loan name amount ducats
    debtor = command.split[1].capitalize
    amount = command.split[2].to_i

    if (ducats - amount) > 0
        respond("ShylockBot gives #{debtor} #{amount} ducats")
        ducats -= amount
        ledger[debtor] = amount
        $stdout.puts("- #{amount}")
    else
      respond("Shylock bot doesn't have enough to lend #{amount} ducats. Only #{ducats} ducats left.")
    end

  when 'ledger'
    respond('ShylockBot pulls out his ledger')
    ledger.each { |name, debt| $stdout.puts("#{name} owes me #{debt} ducats.") }

  else
    respond('ShylockBot looks confused')

  end


end
