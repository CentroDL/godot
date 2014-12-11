module Anthropomorphable # Humanizable
  attr_writer :name

  def name
    @name ||= "Baby #{self.class}"
  end

  def love!(something)
    loved_ones << something
  end

  def loved_ones
    @loved_ones ||= []
  end

  def hate!(something)
    enemies << something
  end

  def enemies
    @enemies ||= []
  end

  def emote(action)
    emotion = "::#{action}::"
    $stdout.puts(emotion)
    emotion
  end

  def speak(words)
    $stdout.puts(words)
    words
  end

  def use_tool(tool, action)
    use = "#{name} uses the #{tool} to #{action}"
    $stdout.puts(use)
    use
  end
end
