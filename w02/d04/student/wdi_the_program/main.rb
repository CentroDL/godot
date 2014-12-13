require 'pry'
require_relative 'human.rb'
require_relative 'teacher.rb'
require_relative 'student.rb'

phil = Teacher.new("Phil Lamplugh")
phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")

mr_lloyd = Teacher.new("Mr. LLoyd")
mr_lloyd.shout("What in tarnashions")

phil.teach("Hey I'm teaching...quiet fart.")

brian = Student.new("Briman")
brian.speak("I am having a great day today")
brian.shout("I am Reptar!!! here me")
brian.do_homework("Program Facebook")

puts(brian.walks_upright?)
