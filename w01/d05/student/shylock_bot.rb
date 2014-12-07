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


ducat_bank = 10000
$stdout.puts(">>")
user_response = $stdin.gets.chomp
return_statement = {
  :confused => "ShylockBot looks confused",
  :purse => "ShylockBot pulls out his purse",
  :ledger => "ShylockBot pulls out his ledger",
  :loan => "ShylockBot loans money"
}

if check_for_loan(user_response)
  response_array = user_response.split
  $stdout.puts("::ShylockBot #{response_array[1]} #{response_array[2]} ducats::")

elsif check_for_purse
$stdout.puts("::#{return_statement[:confused]}::")
$stdout.puts("::#{return_statement[:purse]}::")
$stdout.puts("::#{return_statement[:ledger]}::")

