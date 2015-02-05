class House < ActiveRecord::Base
  validates :name, uniqueness: true
end
