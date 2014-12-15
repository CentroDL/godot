module Abilities
  module Schoolable
    # If the brain hash does not automatically contain a :skills key
    # this will assign it to an empty array

    def learn!
      brain[:skills] ||= []
    end

    def learn_to(thing)
      brain[:skills] << thing.to_sym
      remember("learned how to #{thing}")
    end

    # this method is never invoked directly!
    # After a module is extended on an object, this method is
    # automatically called
    # and the object is passed to this method as an argument
    # http://www.ruby-doc.org/core-2.1.2/Module.html#method-i-extended
    # `obj` refers to whatever instance extend Module was called on
    def self.extended(obj)
      obj.learn!
      puts "#{self} extended in #{obj}"
    end

    def knows_how_to?(thing)
      brain[:skills].include?(thing)
    end
  end
end
