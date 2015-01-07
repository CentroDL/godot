# Redis Cheatsheet

## Data Structures

- String - Simple key value pairs
- Hash - Like a mini-redis, a key with multiple fields and values
- List - a collection of strings sorted by insertion order
- Set - a unique unordered collection of strings
- Sorted Set - similar to sets but with a score for each value to set a order

## CRUD Operations for different Data Structures

### Strings

- Create `set name godo`
- Update `append t`

- Create `set class_size 15`
- Update `incr class_size`

- Destroy `del name`

### Lists

- Create `lpush students Dain` `rpush students Dflip`
- Read `lrange students 0 -1`
- Destroy `rpop` `lpop`

### Hashes

- Create `hset student name Ernie`
- Read `hget student name`
- Destroy `hdel student name`

### Set

- Create `sadd cities Boston`
- Read `smembers cities`
- Destroy `srem cities Boston`

### Sorted Set

- Create `zadd top_cities 0.1 'New York'`
- Create `zadd top_cities 0.2 London`
- Create `zadd top_cities 0.3 Shanghai`

- Read `rangebyscore top_cities 0 1`

- Destroy `zrem top_cities 'New York'`

## Translating Redis documentation to Ruby library

```
redis> SADD key1 "a"
(integer) 1
redis> SADD key1 "b"
(integer) 1
redis> SADD key1 "c"
(integer) 1
redis> SADD key2 "c"
(integer) 1
redis> SADD key2 "d"
(integer) 1
redis> SADD key2 "e"
(integer) 1
redis> SINTERSTORE key key1 key2
(integer) 1
redis> SMEMBERS key
1) "c"
```

```
require 'redis'
$redis = Redis.new({ :host => "127.0.0.1", :port => 6379 })
$redis.sadd("key1", "a")
#=> 1
$redis.sadd("key1", "b")
#=> 1
$redis.sadd("key1", "c")
#=> 1
$redis.sadd("key2", "c")
#=> 1
$redis.sadd("key2", "d")
#=> 1
$redis.sadd("key2", "e")
#=> 1
$redis.sinterstore("key", "key1", "key2")
#=> 1
$redis.smembers "key"
#=> "c"
```

## Expiring keys

```
set ice "I'm melting"
expire ice 10
```
one second later `ttl ice` will return 9


10 seconds later `get ice` will return nil
