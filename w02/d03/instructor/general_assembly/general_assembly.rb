module GeneralAssembly
  SPACES = {
    :_902 => ["4th Floor", "3rd Floor"],
    :_915 => ["4th Floor"],
    :_USW => ["3rd Floor"]
  }

  def self.eat(mealtime, food_item="oatmeal")
    "Mmmmm, #{food_item}. I love #{mealtime}."
  end

  def self.nap(length)
    rand < 0.5 ? "Sleep for #{length} minutes." : "The pods are all full!"
  end

  def self.print(text)
    "email: print@ga.co\n Please print:\n#{text}"
  end

  def self.study
    key = SPACES.keys.sample
    "#{SPACES[key].sample} #{key[1..-1]}"
  end
end
