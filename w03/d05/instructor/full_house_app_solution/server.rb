module FullHouseApp
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    # set the logger to respond to `logger.debug`
    before do
      logger.level = 0
    end

    ########################
    # Routes
    ########################

    get('/') do
      render(:erb, :index, { :layout => :default_layout })
    end
    
    get('/script') do
      @script = params[:script] || ""
      @script = URI.decode(@script)
      @script = "A Generic Full House Script\n"   + \
                "      by the ScriptBot\n"        + \
                "***************************\n\n" + @script
      render(:erb, :script, { :layout => :default_layout })
    end

    get('/:story_beat') do
      logger.debug params # print the params to the server log

      # take the current route and load any data associated with it
      @this_route = params[:story_beat]
      @story_beat = STORY_BEATS[@this_route.to_sym]

      # if the current route is not a story beat, jump back to the index
      redirect to("/") unless @story_beat
      logger.debug @story_beat # print the current story beat information

      # load a link for the back button, either from the data or the last route
      @last_route = @story_beat[:back] || params[:last_route]

      # store the list of images as an instance variable for the ERB template
      @images = IMAGES

      # save any current story beat to the script
      script = params[:script] || ""
      script = URI.decode(script)

      # join the script lines for the pre-formatted area, if they exist
      if @story_beat[:lines]
        @beat = @story_beat[:lines].join("\n\n")
        script += @beat + "\n\n"
      end
      
      # encode them for the url
      @script_param = "&script=" + URI.encode(script )

      render(:erb, :story_beat, { :layout => :default_layout })
    end

  end
end
