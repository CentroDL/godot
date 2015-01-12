# module Secret
class Diary
  def initialize
    @persons_secrets = {}
  end

  def tell_secret(person, secret)
    if @persons_secrets[person].nil?
      @persons_secrets[person] = []
    end
    @persons_secrets[person].push(secret)

    # if @persons_secrets[person].nil?
    #   @persons_secrets[person] = []
    #   @persons_secrets[person].push secret
    # else
    #   @persons_secrets[person].push secret
    # end
  end

  def get_secrets(person)
    @persons_secrets[person]
  end
end
# end

diary = Diary.new

puts "Welcome to the Diary App!"
puts "Please enter your name:"
name = gets.chomp
# puts name

puts "Would you like to read or write?"
choice = gets.chomp
if choice == "read"
  puts diary.get_secrets(name)
else # write
  puts "Enter your secret:"
  secret = gets.chomp
  diary.tell_secret name, secret
end
