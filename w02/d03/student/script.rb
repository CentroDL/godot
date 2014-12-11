require_relative 'person'

class Script
  attr_accessor :writer, :plot
end
# flickr.script.class        #=> Script < Object
# flickr.script.writer.class #=> Person < Object
# flickr.script.plot.class   #=> String < Object
# script.writer = "Robert Zemeckis"
# script.plot   = "A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence."

# flickr.script = script
#        so script has a getter
# flickr.to_novelization.is_a? String #=> true
# flickr.to_novelization #=> "Back to the Future! by Robert Zemeckis. A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence. THE END"
