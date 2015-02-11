# CREATE TABLE movies (
#   id serial PRIMARY KEY,
#   purchase_price numeric(4,2) DEFAULT 14.99,
#   rental_price numeric(4,2) DEFAULT 3.99,
#   available_on TIMESTAMP,
#   description text,
#   rating varchar,
#   poster_image text,
#   length integer,
#   title varchar NOT NULL,
#   created_at TIMESTAMP,
#   updated_at TIMESTAMP
# );

class Movie < ActiveRecord::Base

end
