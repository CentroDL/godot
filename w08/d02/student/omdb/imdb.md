```sql
SELECT actors.name, movies.*
  FROM actors
INNER JOIN actors_movies
  ON actors.id = actors_movies.actor_id
INNER JOIN movies
  ON actors_movies.movie_id = movies.id
```

```sql
SELECT actors.name, movies.*, count(movies.id)
  FROM actors
INNER JOIN actors_movies
  ON actors.id = actors_movies.actor_id
INNER JOIN movies
  ON actors_movies.movie_id = movies.id
```
