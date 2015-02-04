DROP TABLE IF EXISTS receipts;
DROP TABLE IF EXISTS stores;


CREATE TABLE stores(
  id     SERIAL  PRIMARY KEY,
  name   VARCHAR NOT NULL,
  slogan VARCHAR NOT NULL
);

CREATE TABLE receipts (
  id              serial      PRIMARY KEY,
  store           varchar(50) NOT NULL,
  item            varchar(50) NOT NULL,
  number_of_items integer     DEFAULT 1,
  price           money       NOT NULL,
  buy_date        date        DEFAULT current_date,
  returned        boolean     DEFAULT false
);

INSERT INTO stores (name, slogan) VALUES
( 'Target', 'Right On'),
( 'Schnapps Haus', 'Yah'),
( 'Sears','stuff'),
( 'Toys R Us', 'I don''t wanna grow up'),
( 'JC Penny', 'pennies all day'),
( 'Macy''s', 'big red star'),
( 'Community Books', 'read!'),
( 'Strand', 'goodbye');

INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES
  ('Sears', 'PS4', 1, 400, 'January 21 2014'),
  ('Toys R Us', 'XBox One', 1, 500, 'January 21 2014'),
  ('Toys R Us', 'TMNT Collectors Set', 1, 25, 'January 21 2014'),
  ('Sears', 'Lego Set', 1, 40, 'January 21 2014'),
  ('Strand', 'Blood Meridian', 3, 12, 'March 21 2014'),
  ('Strand', 'Ham on Rye', 2, 12, 'March 21 2014'),
  ('Community Books', 'The Last Tycoon', 1, 14, 'March 21 2014'),
  ('Macy''s', 'Button Down Shirt', 3, 28.50, 'March 22 2014'),
  ('JC Penny', 'Nikes', 1, 100, 'March 23 2014'),
  ('JC Penny', 'tube socks', 3, 28, 'March 23 2014'),
  ('JC Penny', 'Reeboks', 1, 60, 'March 23 2014'),
  ('JC Penny', 'Umbrella, Red', 1, 10.50, 'March 23 2014'),
  ('JC Penny', 'Boxer Shorts', 3, 20.75, 'March 23 2014'),
  ('JC Penny', 'TMNT bedspread', 1, 20, 'March 23 2014'),
  ('Sears', 'Packers Jersey', 1, 50, 'March 24 2014'),
  ('Toys R Us', 'Life', 1, 25, 'March 24 2014'),
  ('Sears', 'laptop bag', 24, 40.50, 'March 24 2014'),
  ('Schnapps Haus', 'Heatstreet Maple Bourbon', 1, 40.99, 'July 4 2014'),
  ('Target', 'Batman Shirt', 3, 20.00, 'Feb 3 2014');

  -- UPDATE receipts SET returned = true WHERE item = 'The Last Tycoon';
  -- UPDATE receipts SET store = 'JC Penney' WHERE store = 'JC Penny';
  -- UPDATE receipts SET store = 'Toys "R" Us' WHERE store = 'Toys R Us';

  -- DELETE FROM receipts WHERE id = 14;

--ALTER TABLE distributors ADD CONSTRAINT distfk FOREIGN KEY (address) REFERENCES addresses (address) MATCH FULL;

-- ALTER TABLE receipts ADD CONSTRAINT stores FOREIGN KEY (id) REFERENCES stores (id) MATCH FULL;


