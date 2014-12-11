require 'pry'
require_relative 'human'
require_relative 'teacher'

phil = Teacher.new
phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")

mr_lloyd = Teacher.new
mr_lloyd.shout("What in sam hell are you doing now, springer?")

phil.teach("Inheritance is when objects of one class gain the abilities of another class.")
# binding.pry
