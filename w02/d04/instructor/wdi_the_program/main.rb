require 'pry'
require_relative 'human'
require_relative 'teacher'
require_relative 'student'

phil = Teacher.new("Phil Lamplugh", 20)
phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")

mr_lloyd = Teacher.new("Mr. Lloyd", 20)
mr_lloyd.shout("What in sam hell are you doing now, springer?")

phil.teach("Inheritance is when objects of one class gain the abilities of another class.")

mike = Student.new("Michael", 211)
mike.do_homework("back_to_the_future.md")
mike.do_homework("tmnt.md")
binding.pry

