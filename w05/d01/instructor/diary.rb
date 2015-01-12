module Secret
  class Diary
    def initialize
      @persons_secrets = {}
    end

    def tell_secret(person, secret)
      if @persons_secrets[person].nil?
        @persons_secrets[person] = []
      end
      @persons_secrets[person].push(secret)

      # if @persons_secrets[person].nil?
      #   @persons_secrets[person] = []
      #   @persons_secrets[person].push secret
      # else
      #   @persons_secrets[person].push secret
      # end
    end

    def get_secrets(person)
      @persons_secrets[person]
    end
  end
end
