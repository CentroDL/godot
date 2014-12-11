# TMNT Mixins

## WARNING: THIS WAS A GUIDE, BUT ALL BELOW HAS BEEN CHANGED DUE TO CIRCUMSTANCES -- please disregard and read the code

Below are links to the powers our young turtles gain when they come in to contact with the mutagenic ooze.

They are listed with the behaviors that they include, and if those behaviors call others (depend upon others), those are listed as well. Therefor, it makes sense to `include` them in the order that they appear.

After that are three more mixins that are specific to only some of the TMNTs. They depend upon the general mixins given first, and so we must `extend` them after the transformation.

### Inclusions

1. **[Anthropomorphable](anthropomorphable.rb)**... Also can be called *Humanizable* if that's easier.
  - the attribute `name`, as a getter and a setter, is `"Baby"` by default
  - `#emote(emotion_str) → String` returns `"::#{emotion_str}::"`
    - side effect: prints return string to standard output
  - `#speak(word_str) → String` returns the same `word_str` as the argument
    - side effect: prints string to to standard out
  - `#use_tool(tool_str, action_str) → String` returns `"#{name} uses the #{tool} to #{action}"`
    - side effect: prints string to standard output
  - `#love!(a_name) → [#<String>]` returns an array of strings of `loved_ones`
    - side effect: adds that person's name to an internal list of `loved_ones`
  - `#hate!(a_name) → [#<String>]` returns an array of strings of `enemies`
    - side effect: adds that person's name to an internal list of `enemies`
  - `#loved_ones → [#<String>]` returns an array of strings of `loved_ones`
  - `#enemies → [#<String>]` returns an array of strings of `enemies`
1. **[Teenageable](teenageable.rb)**
  - a constant `LINGO` that holds cool, teenaged words
  - `#sass(word_str)`
    - **depends on behavior `speak` and `emote`**
    - `speak`s the string, upcasing the first word, and `emote`s an ironic eye roll
  - `#teen_speak(word_str)`
    - **depends on behavior `speak`**
    - speak with a random cool word either appended or prepended from LINGO
1. **[Ninjable](ninjable.rb)**
  - a constant `WEAPONS` that holds ninja weapons
  - has_weapon?
  - ninja_fight
  - equip_weapon!
    - emote
  - sneak
    - emote
  - surprise_take_down!
    - speak, emote

### Extensions

1. Leaderable
1. PizzaCravable
1. Bitterable
1. BoStaffUsable
  - ninjable
