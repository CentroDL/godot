require 'redis'

module Wdinstagram
  module DatabaseHelper
    REDIS = Redis.new

    def last_entry_id
      REDIS.get("entry_id")
    end

    def entry_ids
      REDIS.lrange("entry_ids", 0, -1)
    end

    def entry(id)
      REDIS.hgetall("entry:#{id}")
    end

    def entries
      entry_ids.map {|id| entry(id).merge({"id" => id})}
    end

    def create_entry(author, date_taken, photo_url)
      id = REDIS.incr("entry_id")
      REDIS.hmset(
        "entry:#{id}",
        "author",     author, 
        "date_taken", Date.parse(date_taken).strftime("%b %-d, %Y"),
        "photo_url",  photo_url
      )
      REDIS.lpush("entry_ids", id)
      id
    end
  end
end
