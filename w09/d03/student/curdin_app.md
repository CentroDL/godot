# The Final CURDin'

### Part 1: Research

> Explore the Rails (via ActiveRecord) way of database setup: ***migrations***.

Where to start? The [Rails Guides][rails-guides] are good, as are the 
[API docs][api-docs]. Also very useful would be printing out what the
migrations *would* look like for the Popcorn App. To do this, go in to
your `popcorn_app` directory and run:

```
rake db:schema:dump
```

Then go to `/db/schema.rb`, and read the output file. Finally, answer the 
questions:

1. Why write migrations instead of just a schema?
1. Why the term migration?
1. What value is offered by using ActiveRecord migrations instead of simply
   writing and using a schema?

### Part 2: Explore the Tools

In essence, you interact with migrations via two tools: (1) `rake` and 
(2) `rails generate ...`. 

1. If you use:
  ```bash
  rake -T
  ```

  ... then you will see a list of the possible `rake` actions namespaced under 
  `db:...`. This is how you run the migrations and work with your database in
  Rails.
1. If you use `rails generate migration CreateUsers`, and then visit 
   `/db/migrate` you will see a single migration set up to create a table.

### Part 3: Create a Database

From the previous exercise, we built a series of CURD actions on top of an
already existing data layer, defined below.<sup>__[*](#schema)__</sup>

Let's do this again, but the Rails' way!

1. `rails new` a new application with the name `curdin_app`.
1. Create the database for this using `rake`
1. Generate a migration to correctly create the table `cheeses` below using
   `rails generate`.
1. Run the migration using `rake`.
1. Create the necessary ActiveRecord Model.
1. Add the seed data below into the `seeds.rb` file and run it.

### Part 4: Update the Database

1. Add a column `stank_level` to the `cheeses` table using a migration.

### Part 5: Add a Reference

1. Adda a new table `countries` to the database, and link it to the `cheeses`
   table. Make sure each cheese comes from a country!

---

__*__ - <a link="schema">The given SQL schema for the app.</a>

```sql
DROP TABLE IF EXISTS cheeses;

CREATE TABLE cheeses (
  id          SERIAL PRIMARY KEY,
  name        VARCHAR(50) NOT NULL UNIQUE,
  milk_type   VARCHAR(20) NOT NULL,
  image_url   VARCHAR,
  description TEXT,
  updated_at  TIMESTAMP,
  created_at  TIMESTAMP
);

INSERT INTO cheeses (name, milk_type, image_url, description) VALUES
  ('Point Reyes Bay Blue', 'cow', 'http://www.specialtyfood.com/media/uploads/articles/NP_PointReyes_BayBlue_72dpi.jpg', 'Inspired by the sheer natural beauty of our coastal climate and locale, Bay Blue is a rustic-style blue cheese reminiscent of Stilton. It is known for its mellow flavor and sweet, salted-caramel finish.'),
  ('Four Fat Fowl St. Stephen', 'cow', 'http://38.media.tumblr.com/ed6cd84f3a541933970051fdfd649e68/tumblr_n6k5mkEEMh1qmankdo1_1280.jpg', 'Hudson Valley creamery, Four Fat Fowl, took its name from a colonial rental fee charged by the last landlord of Rensselaerswyck (what’s now Rensselaer county”), which amounted to a day’s labor, including ten to twenty bushels of wheat. Their small, bloomy rounds are delicately buttery, with hints of sun-dried wheat and sweet cream beneath its pillowy rind, making St. Stephen a true expression of local terroir. Serve with local, NY honey, fresh berries and something bubbly to drink.'),
  ('Monastère d''Abondance', 'cow', 'http://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Abondance_%28cheese%29.jpg/550px-Abondance_%28cheese%29.jpg', 'A semi-hard, fragrant, raw-milk cheese made in the Haute-Savoie department of France. Its name comes from a small commune also called Abondance.'),
  ('Savoyard Hills Beaufort Special', 'cow', 'http://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Beaufort.jpg/500px-Beaufort.jpg', 'A firm, raw cow''s milk cheese associated with the gruyère family. An Alpine cheese, it is produced in Beaufort, which is located in the Savoie region of the French Alps.'),
  ('Mother''s Milk', 'cow', 'http://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Double_Gloucester_cheese.jpg/440px-Double_Gloucester_cheese.jpg', 'A traditional, semi-hard cheese which has been made in Gloucestershire, England, since the 16th century, at one time made only with the milk of the once nearly extinct Gloucester cattle.'),
  ('Ol'' Derby', 'cow', 'http://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Sage_Derby_cheese_with_crust.jpg/400px-Sage_Derby_cheese_with_crust.jpg', 'A mild, semi-firm British cow''s milk cheese made in Derbyshire with a smooth, mellow texture and a buttery flavour. Like most of the traditional British hard cheeses it was produced exclusively on farms and was typically sold at a younger age than its more famous cousins Cheddar and Cheshire.'),
  ('Cabrales', 'sheep', 'http://en.wikipedia.org/wiki/File:Cabrales.jpg', 'Made in the artisan tradition by rural dairy farmers in the north of Spain. This cheese can be made from pure, unpasteurised cow’s milk or blended in the traditional manner with goat and/or sheep milk, which lends the cheese a stronger, more spicy flavor.'),
  ('Bettine Grand Cru', 'goat', 'http://www.markys.com/caviar/customer/images/P/120254%20Lg.jpg', 'An amazing Dutch gourmet cheese; half-hard old goat’s cheese, minimum 10 months natural aging. This old goat’s cheese has a delicious, piquant flavor and is ideal with a good glass of wine in the evening.');
```

<!-- Links -->

[rails-guides]: http://guides.rubyonrails.org/active_record_migrations.html
[api-docs]:     http://api.rubyonrails.org/classes/ActiveRecord/Migration.html
