$redis = Redis.new
$redis.flushdb

$redis.hmset("bachelor",
  "name", "Chris Soules",
  "occupation", "farmer",
  "age", 33,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/fc328aad-fa3a-49e5-af0a-f0141367aacf/dim/690.1x1.jpg"
)

$redis.hmset("host",
  "name", "Chris Harrison",
  "occupation", "Television Personality",
  "age", 43,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/dff8a97c-10b5-4569-8a02-f2ff29fd56f4/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:alissa",
  "eliminatable", true,
  "name", "Alissa",
  "occupation", "Flight Attendant",
  "age", 24,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/63ff106c-7c53-425a-ba7b-a3f3d13b266f/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:amanda",
  "eliminatable", true,
  "name", "Amanda",
  "occupation", "Ballet Teacher",
  "age", 24,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/f7706992-e289-4a7c-9423-fb2a30f61f40/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:amber",
  "eliminatable", true,
  "name", "Amber",
  "occupation", "Bartender",
  "age", 29,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/bd95a015-50de-4e8f-b2d0-01c434412764/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:ashley",
  "eliminatable", true,
  "name", "Ashley",
  "occupation", "Freelance Journalist",
  "age", 26,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/625b0598-655d-403f-b56b-014a8896dc28/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:becca",
  "eliminatable", true,
  "name", "Becca",
  "occupation", "Chiropractic Assistant",
  "age", 25,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/fa63be5f-816c-40d9-8e04-d2755b34573f/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:bo",
  "eliminatable", true,
  "name", "Bo",
  "occupation", "Plus-Size Model",
  "age", 25,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/fe6703bf-057c-4ed0-bcd9-879baa0f794c/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:britt",
  "eliminatable", true,
  "name", "Britt",
  "occupation", "Waitress",
  "age", 27,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/e44ce80a-1d49-4d54-bc52-bc2b458ea0a2/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:brittany",
  "eliminatable", true,
  "name", "Brittany",
  "occupation", "WWE Diva-in-Training",
  "age", 26,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/c9cb37b6-ec70-4bdb-b2af-3d388599aee8/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:carly",
  "eliminatable", true,
  "name", "Carly",
  "occupation", "Cruise Ship Singer",
  "age", 29,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/ec18c2a8-752e-4499-8553-3cdb8038c35d/dim/690.1x1.jpg"
)

$redis.hmset("bachelorettes:jade",
  "eliminatable", true,
  "name", "Jade",
  "occupation", "Cosmetics Developer",
  "age", 28,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/13f27ffe-55ec-4642-8066-9513ac3d3a0e/dim/1100.16x9.jpg"
)

$redis.hmset("bachelorettes:jillian",
  "eliminatable", true,
  "name", "Jillian",
  "occupation", "News Producer",
  "age", 25,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/16cea051-ceac-492f-8f82-46b3ccd895a8/dim/1100.16x9.jpg"
)

$redis.hmset("bachelorettes:jordan",
  "eliminatable", true,
  "name", "Jordan",
  "occupation", "Student",
  "age", 24,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/e489e7e9-5c61-4bc7-b717-af4a224c7d17/dim/1100.16x9.jpg"
)

$redis.hmset("bachelorettes:juelia",
  "eliminatable", true,
  "name", "Juelia",
  "occupation", "Esthetician",
  "age", 30,
  "image_url", "http://static.east.abc.go.com/service/image/ratio/id/7128b786-883e-4710-8325-7eceed041e6c/dim/1100.16x9.jpg"
)
