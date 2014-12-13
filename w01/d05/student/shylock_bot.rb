#Shylock bot project
# #METHODS
def check_for_purse(user_input)
  is_there_purse = user_input.split.include?("purse")
end

def check_for_ledger(user_input)
  is_there_leger = user_input.split.include?("ledger")
end

def check_for_loan(user_input)
  is_there_leger = user_input.split.include?("loan")
end
# /////////END of METHODS/////////////

run_shylock = true
ducat_bank = 10000
ledger_record = []
return_statement = {
  :confused => "ShylockBot looks confused",
  :purse => "ShylockBot pulls out his purse",
  :ledger => "ShylockBot pulls out his ledger",
  :loan => "ShylockBot loans money"
}

while run_shylock
  $stdout.puts(">>")
  user_response = $stdin.gets.chomp

  if check_for_purse(user_response)
    $stdout.puts("::#{return_statement[:purse]}::")
    $stdout.puts("#{ducat_bank} ducats")

  elsif check_for_loan(user_response)
    response_array = user_response.split
    $stdout.puts("::ShylockBot gives #{response_array[1].capitalize} #{response_array[2]} ducats::")
    loan_amount = response_array[2].to_i
    $stdout.puts("- #{loan_amount}")
    ducat_bank = ducat_bank - loan_amount
    ledger_record.push("#{response_array[1].capitalize} owes me #{loan_amount} ducats")

  elsif check_for_ledger(user_response)
    $stdout.puts("::#{return_statement[:ledger]}::")
    $stdout.puts("#{ledger_record}")

  else
    $stdout.puts("::#{return_statement[:confused]}::")
    $stdout.puts("Pay me back whenever")
    run_shylock = false
  end
end

