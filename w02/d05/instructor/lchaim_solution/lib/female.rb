require_relative 'person'
require_relative 'abilities/reproducible'

class Female < Person
  include Abilities::Reproducible
end
