class Critic
# Critic.public_instance_methods.include?(:name)       #=> true
# Critic.public_instance_methods.include?(:birth_date) #=> true
#^WORKING WOOT
  attr_accessor :name, :birth_date

  def initialize(name, bday)
    @name = name
    @birth_date = bday
  end

end


