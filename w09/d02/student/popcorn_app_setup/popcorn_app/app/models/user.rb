# CREATE TABLE users (
#   id serial PRIMARY KEY,
#   login varchar NOT NULL UNIQUE,
#   balance numeric(4,2) DEFAULT 0,
#   born_on TIMESTAMP,
#   updated_at TIMESTAMP,
#   created_at TIMESTAMP
# );

class User < ActiveRecord::Base

end
