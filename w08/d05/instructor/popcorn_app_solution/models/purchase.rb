# CREATE TABLE purchases (
#   id serial PRIMARY KEY,
#   purchase_type varchar,
#   amount money,
#   created_at TIMESTAMP,
#   updated_at TIMESTAMP,
#   user_id integer REFERENCES users(id),
#   movie_id integer REFERENCES movies(id)
# );

class Purchase < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  # http://guides.rubyonrails.org/active_record_querying.html#scopes
  scope :rentals, -> { where(purchase_type: :rent) }
  scope :owns, -> { where(purchase_type: :own) }
end
