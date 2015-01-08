require 'redis'
redis = Redis.new

# just in case it's in there.
redis.del("wdi:students")

emails = [
  'carver403@gmail.com',
  'andresv2@mac.com',
  'simons.chase@gmail.com',
  'pcac25@gmail.com',
  'melmalfa@gmail.com',
  'aliya.scribner@gmail.com',
  'ambethoney@yahoo.com',
  'krismacfarlane@gmail.com',
  'dana.defilippo@gmail.com',
  'ourobor@gmail.com',
  'mccool322@aol.com',
  'dennis.liaw@gmail.com',
  'rucker.b@gmail.com',
  'sadestevens.hc@gmail.com',
  'aykeskc@gmail.com',
  'sarah.mcalear@gmail.com'
]

emails.each do |email|
  redis.rpush("wdi:students", email)
end
