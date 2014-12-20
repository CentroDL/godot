require 'pry'
module PairBot

  class Server < Sinatra::Base

    QUESTIONS= {
      #[text value, yes/no?, target(s),  ]
      pass: ["Does the test pass?", true, "/refactor", "/write_code"],
      refactor: ["Need to refactor?", true, "/do_refactor", "/new_feature"],
      do_refactor: ["Refactor the code", false, "/"],
      write_test: ["Write a test", false, "/pass"],
      write_code: ["Write just enough code for the test to pass", false, "/pass" ],
      new_feature: ["Select a new feature to implement", false, "/", "Continue" ]
    }

    # GET '/?answer=yes'
    get "/?:code?" do
      if params[:code] == nil
        status(200)
        @yn = true
        @text = "Do you have a test for that?"
        @yes = "/pass"
        @no =  "/write_test"
      else
        @text = QUESTIONS[ params[:code].to_sym ][0]
        @yn =   QUESTIONS[ params[:code].to_sym ][1]

        if @yn #yes/no path
          @yes = QUESTIONS[ params[:code].to_sym ][2]
          @no = QUESTIONS[ params[:code].to_sym ][3]
        else  #done(blue) path
          @target = QUESTIONS[ params[:code].to_sym ][2]

          if QUESTIONS[ params[:code].to_sym ].last == "Continue"
            @btntext = QUESTIONS[ params[:code].to_sym ][3]
          else
            @btntext = "Done"
          end
        end
      end
      render(:erb, :index, {layout: :default_layout})
    end

    # GET '/yes'
    # get "/:code" do
    #   status(200)
    #   @text = QUESTIONS[ params[:code].to_sym ][0]
    #   @yn =   QUESTIONS[ params[:code].to_sym ][1]

    #   if @yn #yes/no path
    #     @yes = QUESTIONS[ params[:code].to_sym ][2]
    #     @no = QUESTIONS[ params[:code].to_sym ][3]
    #   else  #done(blue) path
    #     @target = QUESTIONS[ params[:code].to_sym ][2]

    #     if QUESTIONS[ params[:code].to_sym ].last == "Continue"
    #       @btntext = QUESTIONS[ params[:code].to_sym ][3]
    #     else
    #       @btntext = "Done"
    #     end

    #   end
    #   render( :erb, :index, {layout: :default_layout})
    # end

  end#Server
end#PariBot

