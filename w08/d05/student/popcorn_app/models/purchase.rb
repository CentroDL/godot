# CREATE TABLE purchases(
#   id            SERIAL  PRIMARY KEY,
#   user_id       integer REFERENCES users(id),
#   movie_id      integer REFERENCES movies(id),
#   purchase_type VARCHAR NOT NULL,
#   created_at    timestamp DEFAULT CURRENT_TIMESTAMP,
#   updated_at    timestamp DEFAULT CURRENT_TIMESTAMP
# );

class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
end
