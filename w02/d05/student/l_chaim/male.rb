
class Male < Person
  def superclass
    self.class.superclass
  end

 def included_modules
    self.singleton_class.included_modules
    #i feel like i lucked out with this one. would love to know if this was the right approach
 end
end
