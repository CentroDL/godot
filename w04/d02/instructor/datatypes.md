# Strings
Create
```
set user_id 1
set user_fname phil
set user_age 50
```

Read
```
get user_id
get user_fname
get user_age
```

Update
```
append user_fname lippe
incr user_age
```

Destroy
```
del user_id
```

Lists

Lists
Creating or Inserting
```
lpush lunchmeals pizza
lpush lunchmeals falafel
rpush lunchmeals wrap
rpush lunchmeals "turkey leg"
```
Reading
```
lrange lunchmeals 0 -1
```
Updating

Destroying
```
lpop lunchmeals
rpop lunchmeals
ltrim lunchmeals 0 2
```


Hashes
Create
```
hset user:1 id 1
hset user:1 fname phil
hset user:1 age 47 interests none

hmset user:2 id 2 fname bill
```

Read
```
hget user:1 fname
hgetall user:2
```
Update
```
hincrby user:2 age 1
```
Delete
```
hdel user:2 fname
```

Create
```
sadd cities wilmington
sadd cities 'new york'
sadd cities 'new york'
```
Read
```
scard cities
smembers cities
sismember cities wilmington
```


