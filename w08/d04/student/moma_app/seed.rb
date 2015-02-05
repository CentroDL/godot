require 'active_record'
require_relative 'artist'
require_relative 'painting'

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'Dennis',  # your username
  database: 'moma_db' # whatever postgres db you want to connect to
)

# # Artists

van_gogh = Artist.create name: 'Vincent Van Gogh',   nationality:  'Dutch'
picasso  = Artist.create name: 'Pablo Picasso',      nationality:  'Spanish'
hokusai  = Artist.create name: 'Katsushika Hokusai', nationality:  'Japanese'
dennis   = Artist.create name: 'Dennis Liaw',        nationality:  'USA'

# # Paintings
dennis.paintings.create title: 'Prism Shell'

springer = Painting.new title: 'Springer'
dennis.paintings << springer

Painting.create title: 'Starry Night',                artist_id: van_gogh.id
Painting.create title: 'Cafe Terrace at Night',       artist_id: van_gogh.id
Painting.create title: 'Guernica',                    artist_id: picasso.id
Painting.create title: 'The Old Guitarist',           artist_id: picasso.id
Painting.create title: 'The Great Wave off Kanagawa', artist_id: hokusai.id
Painting.create title: 'Red Fuji',                    artist_id: hokusai.id




