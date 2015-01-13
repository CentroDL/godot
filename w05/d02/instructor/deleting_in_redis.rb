require 'redis'
require 'pry'

$redis = Redis.new
$redis.flushdb

$redis.rpush("colors", ["blue", "green"])
$redis.rpush("colors", "red")
$redis.rpush("colors", "orange")
$redis.rpush("colors", "mauve")
$redis.rpush("colors", "purple")
$redis.rpush("colors", "dave")

binding.pry

$redis.rpop("colors")
$redis.lpop("colors")

$redis.hmset("pj", "first_name", "phillip", "last_name", "hughes", "age", 34)

# overwriting a value in a hash
$redis.hset("pj", "first_name", "PJ")

# deletes age field from pj
$redis.hdel("pj", "age")

# deletes multiple key-value pairs from the 'pj hash'
$redis.hdel("pj", ["first_name", "last_name"])


