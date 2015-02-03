## Create a database called `hogwarts_app`

## Work with a partner to define table definitions for the following students table in a file called `schema.sql`

__Students table__

| fname   | lname           | house_name     |
| :--:    | :--:            | :--:           |
| Harry   | Potter          | Gryffindor     |
| Ron     | Weasly          | Gryffindor     |
| Draco   | Malfoy          | Slytherin      |
| Vincent | Crabbe          | Slytherin      |
| Luna    | Lovegood        | Ravenclaw      |
| Padma   | Patil           | Ravenclaw      |
| Cedric  | Diggory         | Hufflepuff     |
| Justin  | Finch-Fletchley | Hufflepuff     |

##

Import your schema. Don't bother inserting any students yet.
Try the following two commands.

```sql
INSERT INTO students
  (fname, lname, house_name)
VALUES
  ('Fred', 'Weasly', 'Gryffindor'),
  ('George', 'Weasly', 'Gryffindor');

> Research! Delete the twin that died! 

## Stop here.

Work with your partner to update your `schema.sql` to reflect the following tables

__Students table__

| fname   | lname           | house_id |
| :--:    | :--:            | :--:     |
| Harry   | Potter          | 1        |
| Ron     | Weasly          | 1        |
| Draco   | Malfoy          | 4        |
| Vincent | Crabbe          | 4        |
| Luna    | Lovegood        | 3        |
| Padma   | Patil           | 3        |
| Cedric  | Diggory         | 2        |
| Justin  | Finch-Fletchley | 2        |

__Houses table__
| id   | name       |
| :--: | :--:       |
| 1    | Gryffindor |
| 2    | Hufflepuff |
| 3    | Ravenclaw  |
| 4    | Slytherin  |

Create a houses table with the name of each house and a unique ID 

Update the students table to use a house_id

Add the following student:

```
INSERT INTO students
  (fname, lname, house_id)
VALUES
  ('Jeff', 'Konowich', 7);
```

Do you receive any errors?

# Let's talk

## 

Read through the [foreign key constraint](http://www.postgresql.org/docs/9.3/static/ddl-constraints.html#DDL-CONSTRAINTS-FK).

How would you update your `schema.sql` file to include a Foreign Key constraint.

Then try the following

```
INSERT INTO students
  (fname, lname, house_id)
VALUES
  ('Mealy', 'Stringybark', 8);
```

What happens now?

#

Try and import the students.sql and houses.sql files inside Hogwarts.
Try importing them in different order. Does the order matter?
