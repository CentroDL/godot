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
