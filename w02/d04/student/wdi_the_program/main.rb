require 'pry'
require_relative 'human'
require_relative 'teacher'
require_relative 'student'

phil = Teacher.new("Phil Lamplugh" , 30)
phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")

mr_lloyd = Teacher.new("Mr Lloyd", 11)
mr_lloyd.shout("What in sam hell are you doing now, springer?")


bob = Student.new("Michael", 5)
bob.speak("Hello")
bob.shout("hello")
puts bob.walks_upright?
puts bob.homeworks
bob.do_homework("hw1")
puts bob.homeworks
