# Creates the Tenant Class
class Tenant

  attr_accessor :f_name,:l_name,:born_on,:gender,:nickname,:occupation

  def initialize (fn,ln,bo,g)
    @f_name = fn
    @l_name = ln
    @born_on = bo
    @gender = g
    @nickname = ""
    @occupation = ""
  end

  def full_name
    if @nickname == ""
      return "meet #{@f_name} #{@l_name}, your neightbor."
    else
      return "meet #{@f_name} #{@l_name}(AKA #{@nickname}), your neightbor."
    end
  end

end

p1 = Tenant.new("Calvin","Clifford","December 21, 1929","male",)
p1.nickname = "Bud"
p1.occupation = "Office Drone"

puts(p1.full_name)
