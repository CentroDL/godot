module Abilities
  module Employable
    WORKIN_FEELINGS = [
      'i hate working!',
      'i want my life back!'
    ]

    JOBS = %w(tinker tailor soldier spy)

    def self.extended(obj)
      puts "#{self} extended to #{obj}"
    end

    def work
      WORKIN_FEELINGS.sample
    end

    def get_a_job!
      remember("got a job being a #{JOBS.sample}")
    end
  end
end
