require 'redis'


# module Secret
class Diary
  def initialize
    @redis = Redis.new
    # @persons_secrets = {}
  end

  def tell_secret(person, secret)
    @redis.lpush "diary_app:#{person}", secret
    # if @persons_secrets[person].nil?
    #   @persons_secrets[person] = []
    # end
    # @persons_secrets[person].push(secret)
  end

  def get_secrets(person)
    @redis.lrange "diary_app:#{person}", 0, -1
    # @persons_secrets[person]
  end
end
# end

