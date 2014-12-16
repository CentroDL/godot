require_relative './movie'
require_relative './person'
require_relative './rating'
require_relative './score'
require_relative './critic'

m = Movie.new("Star Wars")
r = Rating.new("PG")
m.rating = r

d1 = Person.new("George Lucas", "May 14, 1944")
m.director = d1

m.script = Script.new
m.script.writer = d1
m.script.plot = "A boy becomes a man in space!"
m.script = script

s1 = Score.new(0.45)
s2 = Score.new(1)
c1 = Critic.new("Roger Ebert", "June 18, 1942")
c2 = Critic.new("Gene Siskel", "September 9, 1943")
s1.reviewed_by = c1
s2.reviewed_by = c2

m.scores.push(s1, s2)
