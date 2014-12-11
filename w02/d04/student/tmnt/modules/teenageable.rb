module Teenageable
  LINGO = {
    :prepend => ['Gnarly', 'Radical', 'Awesome'],
    :append  => ['dude.', 'like, kowabunga!', '... Tubular!']
  }

  def sass(words)
    words = words.split
    words.first.upcase!
    words = "#{words.join(" ")}\n::ironic eye roll::"
    $stdout.puts(words)
  end

  def teen_speak(words)
    key = LINGO.keys.sample
    if key == :prepend
      words = "#{LINGO[key].sample}! #{words.capitalize}."
    else
      words = "#{words.capitalize}, #{LINGO[key].sample}"
    end
    $stdout.puts(words)
  end
end
