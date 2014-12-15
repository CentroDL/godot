require 'pry'


# kanye_records = [
#   { :year => 2013, :title => "Yeezus" },
#   { :year => 2011, :title => "Watch the Throne" },
#   { :year => 2010, :title => "My Beautiful Dark Twisted Fantasy" },
#   { :year => 2008, :title => "808s and Heartbreak" },
#   { :year => 2007, :title => "Graduation" },
#   { :year => 2005, :title => "Late Registration" },
#   { :year => 2004, :title => "The College Dropout" }
# ]

# kanye_records.each do |x|
#   puts "In #{x[:year]}, Kanye West came out with #{x[:title]}."
# end

arr = [
  "Travis",
  "Aliya",
  "Sarah",
  "Angelina",
  "Macfarlane",
  "Simons",
  nil,
  "Melodie",
  "Patricio",
  "Adres",
  "Dana"
]

arr.each do |z|
  if z == nil
    next
  end
  puts "#{z.upcase} is in the room, taught by a madman"
end



