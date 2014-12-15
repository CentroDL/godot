module Abilities
  module Reincarnatable
    def save_memories
      File.open(memory_bank, 'a+') do |f|
        brain[:memories].each do |memory|
          f.puts stringify(memory)
        end
      end
    end

    def load_memories
      return unless File.exist?(memory_bank)
      File.open(memory_bank, 'r') do |f|
        f.each_line { |line| brain[:memories] << memory_from(line) }
      end
    end

    def stringify(memory)
      memory.values.join(' => ')
    end

    def memory_from(line)
      age, memory = line.split(' => ')
      { age: age, memory: memory }
    end

    def die!
      save_memories
      super
    end

    def initialize(name)
      super
      load_memories
    end

    def memory_bank
      "person_memories_#{name.upcase}.txt"
    end
  end
end
