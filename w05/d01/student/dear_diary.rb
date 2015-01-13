require_relative 'diary'
require 'redis'

diary = Diary.new

loop do
  puts "Do you want to write in your diary or read in your diary?"
  read_or_write = gets.chomp

  puts "Who are you?"
  name = gets.chomp

  case read_or_write

    when "write"
      puts "Write an entry!"
      entry = gets
      diary.tell_secret name, entry
    when "read"
      puts "Here are your entries:"
      entries = diary.get_secrets name
      if !entries.empty? || entries == nil
        entries.each { |e| puts e }
      else
        puts "No entries!"
      end
  end#case

end#loop
