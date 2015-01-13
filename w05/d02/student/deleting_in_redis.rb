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
