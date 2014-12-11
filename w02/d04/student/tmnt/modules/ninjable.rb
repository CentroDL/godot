module Ninjable
  attr_writer :weapon
  WEAPONS = ["karate", "katana", "nunchacku", "sai"]

  def weapon
    @weapon ||= WEAPONS.first
  end

  def has_weapon?(weapon)
    WEAPONS.include?(weapon)
  end

  def ninja_fight
    use = "\nuse #{weapon} to fight"
    $stdout.puts(use)
  end

  def sneak
    action  = "#moves swiftly and silently"
    emotion = "\n::#{action}::\n"
    $stdout.puts(emotion)
  end

  def surprise_take_down!
    sneak; ninja_fight
    $stdout.puts("\nHiyaaa!")
  end
end
