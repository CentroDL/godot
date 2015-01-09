require 'redis'
require 'json'

$db = Redis.new

$db.del("mumbles")
$db.del("mumble_id")

mumble_id = $db.incr "mumble_id"

$db.hmset "mumble:#{mumble_id}",
"text", "Thinking about time, and what it does to us...",
"image", "http://goo.gl/scTB1I",
"date", "2014-11-03",
"tags", "#thuglife #beauty",
"author_email", "kristin.eugenio@generalassemb.ly",
"author_handle", "eugenius",
"author_thumbnail","http://photos-d.ak.instagram.com/hphotos-ak-xpf1/10554197_777637282292435_572425562_a.jpg",
"likes", 1
$db.rpush "mumbles", mumble_id

mumble_id = $db.incr "mumble_id"

$db.hmset "mumble:#{mumble_id}",
"text", "This is the second post that's going into the DB",
"image", "http://media.giphy.com/media/ToMjGpHwyUi7miO2LLi/giphy.gif",
"date", "2014-11-07",
"tags", "#thuglife #yolo",
"author_email", "brad.eugenio@generalassemb.ly",
"author_handle", "theBrizzles",
"author_thumbnail", "http://photos-d.ak.instagram.com/hphotos-ak-xpf1/10554197_777637282292435_572425562_a.jpg",
"likes", 1
$db.rpush "mumbles", mumble_id

