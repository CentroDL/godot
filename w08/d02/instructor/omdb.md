### First

* create a db called `imdb_app`
* load the `movies-actors.sql` file into the db

### Have at it 
Try each of the following queries in the psql repl. 
Type it in longhand. Don't copy and paste. 

Think about what the query is doing. Discuss with your partner.

---------

```sql
\dt
```

take a look at our data

```sql
SELECT * FROM actors;
```
```sql
SELECT * FROM movies;
```
```sql
SELECT * FROM movies_actors;
```

### 

What kind of relationship would describe how actors and movies are related?

How would we get all the actors who are in all the movies?


-- selects all the movies and all the actors:

```
SELECT movies.*, actors.*
FROM movies
INNER JOIN actors_movies
ON movies.id = actors_movies.movie_id
INNER JOIN actors
ON actors_movies.actor_id = actors.id;
```
