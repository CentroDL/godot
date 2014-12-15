require_relative 'person'
require_relative 'abilities/reincarnatable'

class Buddhist < Person
  include Abilities::Reincarnatable
end
