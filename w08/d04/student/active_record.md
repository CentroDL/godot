# Hello!

Pair up with a partner and read [Parts 1 through 4](http://guides.rubyonrails.org/active_record_basics.html
) on ActiveRecord Basics from The Rails Guides.

Be sure you're both able to answer the following questions:

- Define Convention over Configuration

**These questions will be on the assessment tomorrow**

- What naming conventions does ActiveRecord follow?

  CamelCase for classnames, pluralized snake case for table names.

- What optional columns will ActiveRecord use if they're on a table?

  created_at, updated_at, lock_version, type, ascociation_name_type, table_name_count

- How do you create an ActiveRecord model?

  Define a class that inherits from ActiveRecord::Base

Given the following sql

```sql
CREATE TABLE space_craft (
    id serial PRIMARY KEY,
    type varchar,
    capacity varchar
    piloted_by integer REFERENCES person(id)
);

CREATE TABLE person (
    id serial PRIMARY KEY,
    born_on date
);
```

1. How would you update the schema to allow ActiveRecord to automatically record when a row is updated or created?
1. How could you rename the tables and rows to better follow ActiveRecords naming conventions?
1. How would you create two ActiveRecord models based on the tables?
