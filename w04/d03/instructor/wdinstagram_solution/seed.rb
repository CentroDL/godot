require 'date'
require 'redis'

redis = Redis.new
redis.flushdb

redis.set("entry_id", 1000)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2014-01-07").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/B1nnX3sIYAAYG9K.jpg:large"
)
redis.rpush("entry_ids", id)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2014-01-07").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/Braehh_CUAAzvh7.png:large"
)
redis.rpush("entry_ids", id)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2014-01-05").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/Bre4zM0CEAAuoao.png:large"
)
redis.rpush("entry_ids", id)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2015-01-01").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/BrkdehrCIAAtin-.jpg:large"
)
redis.rpush("entry_ids", id)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2014-12-31").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/BwdDaMzIUAE18In.png:large"
)
redis.rpush("entry_ids", id)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2014-12-29").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/BzHU3dDCEAI1lyX.jpg:large"
)
redis.rpush("entry_ids", id)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2014-12-25").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/B0zQ0v3CYAAlCle.jpg:large"
)
redis.rpush("entry_ids", id)

id = redis.incr("entry_id")
redis.hmset(
  "entry:#{id}",
  "author",     "Joey B.", 
  "date_taken", Date.parse("2014-12-20").strftime("%b %-d, %Y"),
  "photo_url",  "https://pbs.twimg.com/media/B2K5DHmCcAMQUBv.jpg:large"
)
redis.rpush("entry_ids", id)
