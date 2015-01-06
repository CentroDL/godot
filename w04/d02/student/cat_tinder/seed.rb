require 'redis'

redis = Redis.new
redis.flushdb

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://www.vetprofessionals.com/catprofessional/images/home-cat.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://i.huffpost.com/gen/964776/thumbs/o-CATS-KILL-BILLIONS-facebook.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_March_2010-1.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://www.us.onsior.com/images/3_1/cat-3_1-01.png",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://www.mirror.co.uk/incoming/article99763.ece/alternates/s615/a-bengal-cat-935179217.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://www.pets4homes.co.uk/images/articles/1111/large/feline-influenza-all-about-cat-flu-5239fffd61ddf.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://media1.santabanta.com/full1/Animals/Cats/cats-93a.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://cdn.sheknows.com/articles/2012/10/isolated-cat.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://casamenteiras.com.br/pets/wp-content/uploads/2013/04/cats.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://www.desviralata.com/wp-content/uploads/2014/06/CAt_No-Background1.png",
            "votes", 0)
redis.rpush("cat_ids", id)

id = redis.incr("cat_id")
redis.hmset("cat:#{id}",
            "image_url",   "http://scienceblogs.com/gregladen/files/2012/12/Beautifull-cat-cats-14749885-1600-1200.jpg",
            "votes", 0)
redis.rpush("cat_ids", id)
