class InstructorsController < ApplicationController
  @@instructors = [
    { name: 'Phil', image_url: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/654/thumb_phillip-lamplugh.jpg'}, 
    { name: 'Travis', image_url: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/2218/thumb_travis.jpg'}, 
    { name: 'PJ', image_url: 'http://news.xbox.com/~/media/files/taran%20killam.jpeg?h=675&w=940' }
  ] 
  def index
    @instructors = @@instructors
  end

  def profile
    @instructor = @@instructors.find { |i| i[:name].downcase == params[:name] }
  end
end 


