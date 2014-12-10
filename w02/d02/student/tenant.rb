class Tenant

  attr_accessor :f_name, :born_on, :l_name, :gender, :nickname, :occupation

  def initialize(f_name, l_name, bday, gender)
    @f_name = f_name
    @l_name = l_name
    @born_on = bday
    @gender = gender
    @nickname = "N/A"
    @occupation = "N/A"
  end


  def full_name
    puts "#{self.f_name} '#{self.nickname}' #{self.l_name}"
  end

end

# p1 = Tenant.new("Calvin", "Clifford", "male", "December 21st, 1929")
# p1.nickname = "Bud"
# p1.occupation = "Office Drone"

# #puts p1.f_name, p1.l_name, p1.gender, p1.born_on, p1.nickname, p1.occupation

# p1 = Tenant.new("Calvin", "Clifford", "male", "December 21, 1929")
# p1.nickname = "Bud"
# p1.full_name
