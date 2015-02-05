CREATE TABLE users (
    id serial PRIMARY KEY,
    login varchar NOT NULL,
    email varchar NOT NULL UNIQUE
);

CREATE TABLE bookmarks (
    id serial PRIMARY KEY,
    url text DEFAULT "",
    user_id integer REFERENCES users(id)
);


# pseudo code for an Active Record Pattern
class User < ActiveRecord::Base
end

class Bookmark <ActiveRecord::Base
end

u1 = User.new
u1.login = "phil"
u1.email = "philco@ga.co"
u1.save

"INSERT INTO users (login, email) VALUES ('phil', 'philco@ga.co');"

b1 = Bookmark.new
b1.url = "www.google.com"
b1.user_id = u1.id

"INSERT INTO bookmarks (url, user_id) VALUES ('www.google.com', 1);"

u1.bookmarks #=> [] # a list of Bookmark instances
"SELECT * FROM bookmarks WHERE user_id = 1;"

b1.user #=> the user object
"SELECT * users WHERE id = 1;"
