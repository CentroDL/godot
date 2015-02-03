# Real Estate Tycoonery with *HMH Realty*

![Manhattan skyline][new-york-new-york]

> “As soon as the land of any country has all become private property,
> the landlords, like all other men, love to reap where they never sowed,
> and demand a rent even for its natural produce. ”

— Adam Smith, Wealth of Nations (Book 1, Chapter 6, Paragraph 8)

## Setup

Tonight you will build a database representing **[H][hari][M][mck][H][harish]
Realty's** apartment buildings. These buildings will have apartments, tenants,
and doormen. The first step will be to draw ERD's in order to establish the
relationships and help you build your schema. Think about what
[datatypes][pg-datatypes] would best represent the columns in your table.

### Completion

**Please finish through Part 5.** That's the whole thing! Good luck!
As always: while more is better; healthy living is best.

## Part 1 - ERD

Given the entities **Buildings**, **Apartments**, **Tenants**, and **Doormen**,
draw an ERD. What relationships exist between these tables? Which tables should
have a foreign key?

- A **building** has a ...
  - name,
  - address,
  - and, a number of floors.
- An **apartment** has a ...
  - floor,
  - name,
  - price,
  - square footage,
  - number of bedrooms,
  - and a number of bathrooms.
- A **tenant** has a ...
  - name,
  - age,
  - and a gender ('Male' or 'Female').
- A **doorman** has a ...
  - a name,
  - experience (in number of shifts worked),
  - and a shift ('day' or 'night').

## Part 2 - Create the DB / Schema

After establishing the proper relationships and drawing your ERDs, create your
database, naming it `hmh_realty_db`. Create your schema for all of the tables
and load it into your database from a file called `apartment_setup.sql`.

## Part 3 - Seed the DB

Run the seeds file `apartment_seeds.sql` in order to load the data into the
database.

## Part 4 - Queries

Write queries to do the following:

- Retrieve all info on all tenants
- Retrieve the name, age, and gender of all tenants
- Retrieve all info on all tenants older than 65
- Retrieve all info on all tenants in apartment with id 20
- Retrieve all info on all tenants in apartment with ids 20 or 21
- Delete all tenants whose age is greater than 65
- Change all doormen from building 3 to work night shifts.
- Create one new tenant, put them in any apartment you want
- Find just the ids for all apartments for building with 2
- Find all info for apartments in building number 3 whose price is greater than $2300
- Geriatric Birthday! Update all tenants whose age is 90 to be 91
- Change all tenants ages to increase by 1
- Find all tenants who live in an apartment that costs more than $2300

## Part 5 - Join Queries

- Demonstrate joining doormen with buildings
- Demonstrate joining buildings with apartments
- Demonstrate joining apartments with tenants

<!-- Links -->

[new-york-new-york]: images/manhattan-wallpaper-800x600.jpg
[hari]:              http://harimohanraj.com/about_me/
[mck]:               https://github.com/DrRobotmck
[harish]:            https://www.linkedin.com/pub/harish-tella/73/686/797
[pg-datatypes]:      http://www.postgresql.org/docs/9.3/static/datatype.html
