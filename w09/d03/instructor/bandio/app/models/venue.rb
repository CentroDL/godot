class Venue < ActiveRecord::Base
  has_many :events
  has_many :bands, :through => :events
end
