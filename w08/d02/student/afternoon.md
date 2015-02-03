# Afternoon

This morning we created two tables for students and houses and worked on creating a join table with the following:

```
SELECT students.*, houses.*
FROM students
INNER JOIN houses
ON students.house_id = houses.id;
```

# 

Update `schema.sql` and create a table called `death_eater_memberships`

`death_eater_memberships` should have a 

- unique id
- joined_on (a timestamp)
- student_id

the `student_id` should have a Foreign Key constraint that references the students table

When you're done you should be able to execute the `death_eaters.sql` file.

# 

How would you write the query to create a join table that shows you the names of all the death eaters?

How would you write a query to find the only death eater not in Slytherin

