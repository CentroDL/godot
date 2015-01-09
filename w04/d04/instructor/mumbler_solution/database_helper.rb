require 'date'
require 'redis'

module Mumbler
  module DatabaseHelper
    REDIS = Redis.new

    def flushdb
      REDIS.flushdb
    end

    def set_mumble_incrementor(value)
      REDIS.set("mumble_id", 1000)
    end

    def last_mumble_id
      REDIS.get("mumble_id")
    end

    def mumble_ids
      REDIS.lrange("mumble_ids", 0, -1)
    end

    def mumble(id)
      REDIS.hgetall("mumble:#{id}")
    end

    def mumbles
      mumble_ids.map {|id| mumble(id).merge({"id" => id})}
    end

    def create_mumble(params)
      id = REDIS.incr("mumble_id")

      # ensure that the date fits the correct convention if it exists
      if params["date"]
        params["date"] = Date.parse(params["date"]).strftime("%b %-d, %Y")
      end

      data = set_defaults_for(params)

      REDIS.mapped_hmset("mumble:#{id}", data)
      REDIS.lpush("mumble_ids", id)
      id
    end

    def set_defaults_for(params)
      default_data = {
        "image"            => "",
        "date"             => Date.today.strftime("%b %-d, %Y"),
        "tags"             => "",
        "author_handle"    => "anonymous",
        "author_thumbnail" => "http://goo.gl/KQUfGE",
        "likes"            => 0
      }
      default_data.merge(params)
    end
  end
end
