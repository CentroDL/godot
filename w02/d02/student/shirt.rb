# Creating the Shirt Class
class Shirt

  def initialize(s,c,t)
    @size = s
    @color = c
    @text = t
  end
# //////////CREATING SETTER METHODS//////////////
  def set_shirt_size=(s)
    @size = s
  end

  def set_shirt_color=(c)
    @color = c
  end

  def set_shirt_text=(t)
    @text = t
  end
#/////////END OF SETTER METHODS///////////////////
# ////////CREATING GETTER METHODS/////////////////
  def get_shirt_size
    return @size
  end

  def get_shirt_color
    return @color
  end

  def get_shirt_text
    return @text
  end
# ////////END OF GETTER METHODS///////////////////
end

pearl_jam_t = Shirt.new("Xtra_Large","nicely faded black","Yield Tour 1998")
puts(pearl_jam_t.get_shirt_text)

hipster_plaid = Shirt.new("Medium","red","NO LOGO")
puts("That #{hipster_plaid.get_shirt_color} shirt has #{hipster_plaid.get_shirt_text} written on it.")

david_beckham_jersey = Shirt.new("Large","white","Beckham")
puts("Thats a #{david_beckham_jersey.get_shirt_size} #{david_beckham_jersey.get_shirt_text} jersey!!! ")



