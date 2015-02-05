# Morning!

We began this week persisting data with Postgres, then moved to using the PG gem
to dynamically perform CRUD operations to our database. Now we're moving a step
up and putting a layer between our application logic and our database. That
layer is an ORM, an Object Relational Mapper. It translates the values in our
database into objects.

#### Questions 

Read the following [article](http://en.wikipedia.org/wiki/Active_record_pattern) then pair up with a partner and be sure you're both able to answer the following questions:

- What is the Active Record pattern?
- What do tables map to?
- What do column names map to?
- What do rows map to?
- What is an ORM?
- How are foreign key relationships exposed?

### Thought Experiment!

> After you've answered the above questions work with your partner and imagine
how the following SQL would translate into Ruby following an ActiveRecord pattern.

```sql
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
```

- What would the table map to in Ruby?
- What would a row map to?
- How might you access values from the rows?
- How might you access values from the foreign key relationships?

