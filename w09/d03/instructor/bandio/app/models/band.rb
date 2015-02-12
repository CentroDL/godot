class Band < ActiveRecord::Base
  has_many :events
  has_many :venues, :through => :events
end
