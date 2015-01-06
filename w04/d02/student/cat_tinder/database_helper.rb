module CatTinder

  module DatabaseHelper

  def ids
  #CatTinder::DatabaseHelper#ids: gives you all of the cat keys.
    $redis.keys "cat:*"
  end

  def image_url_for(id)
  # CatTinder::DatabaseHelper#image_url_for(id): gives you the URL for the cat's image, given its id.
    $redis.hget "cat:#{id}", "image_url"
  end

  def votes_for(id)
  #CatTinder::DatabaseHelper#votes_for(id): gives you the number of votes for a cat, given its id.
    $redis.hget "cat:#{id}", "votes"
  end

  def upvote!(id)
  #CatTinder::DatabaseHelper#upvote!(id): increments the number of votes given a cat id.
    $redis.hincrby "cat:#{id}", "votes", 1
  end

  end#DatabaseHelper
end#CatTinder
