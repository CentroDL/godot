# SQLab, CSV!

![:image](http://coding.smashingmagazine.com/wp-content/uploads/2010/10/sql.png)

## Setup

Use the included files, `nba_season_2011-12.csv` and `greys_anatomy_actors.csv`,
to solve the following problems. This exercise asks you to create the following
files:

1. `nba_seeds.sql`: creates and inserts into the NBA table
1. `nba_queries.sql`: gets data out of the NBA table
1. `greys_seeds.sql`: creates and inserts into the *Grey's Anatomy* table
1. `greys_queries.sql`: gets data out of the *Grey's Anatomy* table

### Completion

**Please finish through Part 3.** As always: more is better; healthy living is
best.

## Part 1

1. Create a database called `nba_db`.
1. Create a SQL script called `nba_seeds.sql` that:
  1. drops a table named `players` if it exists,
  1. creates a table called `players` with columns for:
    - `name`
    - `age`
    - `team`
    - `games`
    - `points`
  1. inserts the player:
     `Anderson Varejao, age: 29, team: CLE, games: 25, points: 271`.
1. Create a db called `greys_anatomy_db`.
1. Create a SQL script called `greys_seeds.sql` that:
  1. drops a table named `actors` if it exists,
  1. creates a table called `actors` with columns for:
    - `actor`
    - `character`
    - `episodes`
    - `start_year`
    - `end_year`
  1. inserts the actor:
     [`Demi Lovato, character: Hayley May, episodes: 1, start year: 2010, end year: 2010`](http://static.tvgcdn.net/MediaBin/Galleries/Editorial/121112/Greys_Anatomy_Guest_Stars/thumbs/greys-guest-stars)

You should be able to run `nba_seeds.sql` and populate your `nba_db` from the
command line with:

```
$ psql -c nba_db -f nba_seeds.sql
```

You should be able to run `greys_seeds.sql` and populate your `greys_anatomy_db`
from the command line with:

```
$ psql -c greys_anatomy_db -f greys_seeds.sql
```

## Part 2

Use any tools you can to turn the `nba_season_2011-12.csv` file into a series of
SQL insert statements. Add those statements to the `nba_seeds.sql` file.

## Part 3

Figure out the appropriate SQL commands for the following:

(Keep track of your answers in a file called `nba_queries.sql`.)

1. All columns for all players from the New York Knicks (NYK).
1. All columns for all players from the Indiana Packers (IND) who are under 26
   years old.
1. All columns for all players, ordered from least points scored to most points
   scored.
1. Name and Points per game (points/games), for the players with the top 20
   points per game.
1. The average age for all players.
1. The average age for all players on the Oklahoma City Thunder (OKC).
1. The average age for all players who played more than 40 games.

## Part 4

Add the following to your `nba_queries.sql` file:

1. The team and total points scored from all players on that team (team points),
   ordered from most team points to least.
2. The ge and the average points per game for that age, ordered from youngest to
   oldest for all ages.
3. The team and the the number of players who score above 12 points per game on
   that team, ordered from the most number of players to the least number of
   players.

## Part 5

Use any tools you can to turn the `greys_anatomy_actors.csv` file into a series
of SQL insert statements. Add those statements to the `greys_seeds.sql` file.

Then answer the following in `greys_queries.sql`:

1. What is the average number of episodes per actor?
2. How many of each character type below exists:
   - doctors,
   - nurses,
   - paramedics.
3. What is the average number of episodes for each of (ie, *grouped by*)
   doctors, nurses and parademics?
