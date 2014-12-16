
module Abilities
  module Committable
    def marry(person)
      if (interests & person.interests).size > 3
        brain[:loved_ones] << person
        remember("married #{person.name}")
        true
      else
        remember("jilted by #{person.name}")
        false
      end
    end

    def no_longer_loves!(lover)
      lover = brain[:loved_ones].find { |person| person == lover }
      brain[:loved_ones].delete(lover)
    end
  end
end
