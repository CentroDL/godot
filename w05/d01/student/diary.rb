require 'redis'

class Diary

  def initialize
    @persons_secrets = Redis.new
    # if @db.hgetall("secrets").nil?
    #   @persons_secrets = {} #if secrets doesn't exit in the db we make it a blank hash
    #   @db.hset "secrets" #and then set it in the db for later use
    # else
    #   @persons_secrets = @db.hgetall "secrets" #otherwise initialize from the db
    # end
    # @secrets = []
    # @secrets = $db.lrange "secrets" 0 -1
  end

  def tell_secret person, secret
    # #if a person doesn't exist in the secrets hash we create it
    # if @persons_secrets[person].nil?
    #   @persons_secrets[person] = []
    # end
    # #and then set the values as intended
    # @persons_secrets[person].push secret
    # #persist data to secrets
    # @db.mapped_hmset "secrets", @persons_secrets
    @persons_secrets.rpush person, secret
  end

  def get_secrets person
    @persons_secrets.lrange person, 0, -1
  end

end
