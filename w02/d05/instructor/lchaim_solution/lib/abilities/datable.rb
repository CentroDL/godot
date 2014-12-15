module Abilities
  module Datable
    def go_out_with(person)
      random_interest = person.interests.sample
      get_interested_in(random_interest)
    end
  end
end
