class Purchase < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  # http://guides.rubyonrails.org/active_record_querying.html#scopes
  scope :rentals, -> { where(purchase_type: :rent) }
  scope :owns, -> { where(purchase_type: :own) }
end
