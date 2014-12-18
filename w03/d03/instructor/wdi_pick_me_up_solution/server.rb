module WdiComplimentApp
  COMPLIMENTS = [
    "Your code's so explicit.",
    "High five! ^5",
    "Your a pleasure to sit next to. You take showers!",
    "Nice hoodie!",
    "Your grit is contagious.",
    "Well indented, indeed.",
    "Gorgeous docs buddy.",
    "I can't imagine a more semantic name for that variable.",
    "People behind you in class think you are the perfect height.",
    "Your posture during breaks effectively masks your exhaustion.",
    "I find your commit messages inspiring."
  ]

  COLORS = [
    "#0080FF", # sky blue
    "#FFBF00", # gold
    "#9966FF", # purple
    "#FF0080", # deep pink
    "#FF0033", # burning red
    "#01DF3A"  # green
  ]

  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    ########################
    # Routes
    ########################

    get("/") do
      @greeting   = "Welcome:"
      @compliment = COMPLIMENTS.sample
      @color      = COLORS.sample
      render(:erb, :index)
    end

    get("/about") do
      @color = COLORS.sample
      render(:erb, :about)
    end

    get("/:name") do
      @name       = params[:name]
      @greeting   = "Oh hey, #{@name.capitalize}!"
      @compliment = COMPLIMENTS.sample
      @color      = COLORS.sample
      render(:erb, :index)
    end
  end
end