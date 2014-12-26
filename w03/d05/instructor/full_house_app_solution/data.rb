module FullHouseApp
  STORY_BEATS = {
    :opening   => {
      :back    => "",
      :title   => "Show Opens",
      :lines   => ["Opening titles and theme."],
      :image   => :opening,
      :query   => nil,
      :options => [
        [:establish, :establish] # route/image, words
      ]
    },
    :establish => {
      :back    => :opening, # change dynamically!
      :title   => "Establishing Shot",
      :lines   => ["Establishing shot of San Francisco Row Houses."],
      :image   => :establish,
      :query   => "Do we cut to the kids or parents?",
      :options => [
        [:kids,    :cut_to_kids],
        [:parents, :cut_to_parents]
      ]
    },
    :parents => {
      :back    => :establish,
      :title   => "Cut to the Parents",
      :lines   => ["Cut to one of the parents."],
      :image   => :parents2,
      :query   => "Which parent?",
      :options => [
        [:joey,  :joey],
        [:jesse, :jesse],
        [:danny, :danny]
      ]
    },
    :danny => {
      :back    => :parents,
      :title   => "Cut to Danny Tanner",
      :lines   => [
        "Danny Tanner is in the kitchen.",
        "A child explains a problem while he makes pancakes."],
      :image   => :cooking,
      :query   => nil,
      :options => [
        [:problem, :problem]
      ]
    },
    :joey => {
      :back    => :parents,
      :title   => "Cut to Uncle Joey",
      :lines   => [
        "Uncle Joey does a funny voice."
      ],
      :image   => :joey,
      :query   => nil,
      :options => [
        [:establish, :establish_again]
      ]
    },
    :jesse => {
      :back    => :parents,
      :title   => "Cut to Uncle Jesse",
      :lines   => [
        "Uncle Jesse acts cool, but is interrupted by Michelle."
      ],
      :image   => :jesse_cool,
      :query   => nil,
      :options => [
        [:you_got_it, :you_got_it]
      ]
    },
    :kids => {
      :back    => :establish,
      :title   => "Cut to the Kids",
      :lines   => ["Cut to one of the kids."],
      :image   => nil,
      :query   => "Are they cute or having a problem?",
      :options => [
        [:cute,   :cute],
        [:problem, :problem]
      ]
    },
    :cute => {
      :back    => :kids,
      :title   => "Misunderstanding",
      :lines   => nil,
      :image   => nil,
      :query   => "Is there a misunderstanding?",
      :options => [
        [:no_misunderstanding, :nope],
        [:misunderstanding,    :uh_oh!]
      ]
    },
    :problem => {
      :title   => "Problem",
      :lines   => nil,
      :image   => nil,
      :query   => "Which kid is having a problem?",
      :options => [
        [:dj_prob,    "DJ"],
        [:steph_prob, :stephanie],
        [:mich_prob,  :michelle]
      ]
    },
    :dj_prob => {
      :back    => :problem,
      :title   => "DJ's Problem",
      :lines   => ["DJ gets nutty until Uncle Jessie has a heart-to-heart, capiche?"],
      :image   => :dj_jessie,
      :query   => nil,
      :options => [
        [:hugs, :hugs]
      ]
    },
    :steph_prob => {
      :back    => :problem,
      :title   => "Stephanie's Problem",
      :lines   => ["Everyone ignores Stephanie and she cries in frustration."],
      :image   => :problem,
      :query   => nil,
      :options => [
        [:how_rude, :how_rude]
      ]
    },
    :mich_prob => {
      :back    => :problem,
      :title   => "Michelle...",
      :lines   => [
        "Michelle's isn't really having a problem.",
        "Uncle Joey does a funny voice."
      ],
      :image   => :joey,
      :query   => nil,
      :options => [
        [:you_got_it, :you_got_it]
      ]
    },
    :no_misunderstanding => {
      :back    => :cute,
      :title   => "Caught!",
      :lines   => ["One of the kids does something mildly naughty, is caught and reprimanded gently."],
      :image   => :scold,
      :query   => nil,
      :options => [
        [:establish, :establish_again]
      ]
    },
    :misunderstanding => {
      :back    => :cute,
      :title   => "Comedy!",
      :lines   => ["There is a comedy of errors where a kid misunderstands an adult."],
      :image   => :comedy,
      :query   => nil,
      :options => [
        [:how_rude, :how_rude]
      ]
    },
    :how_rude => {
      :title   => "How rude!",
      :lines   => [
        "Stephanie says, \"How rude!\"",
        "The family hugs and the dog barks."
      ],
      :image   => :how_rude,
      :query   => nil,
      :options => [
        [:ending, :roll_credits]
      ]
    },
    :hugs => {
      :title   => "Hugs",
      :lines   => [
        "The family hugs and the dog barks."
      ],
      :image   => :hugs,
      :query   => nil,
      :options => [
        [:ending, :roll_credits]
      ]
    },
    :you_got_it => {
      :title   => "You got it, dude...",
      :lines   => ["Michelle says, \"You got it dude...\""],
      :image   => :you_got_it,
      :query   => nil,
      :options => [
        [:establish, :establish_again]
      ]
    },
    :ending => {
      :title   => "Roll Credits",
      :lines   => [
        "Roll credits."
      ],
      :image   => :ending,
      :query   => nil,
      :options => [
        [:script, :see_the_script]
      ]
    }
  }

  IMAGES = {
    :credits    => "/img/fh-bridge.jpg",
    :opening    => "/img/fh-opening.png",
    :establish  => "/img/fh-establishing.jpg",
    :kids       => "/img/fh-kids.jpg",
    :parents    => "/img/fh-parents.jpg",
    :parents2   => "/img/fh-parents2.jpg",
    :cute       => "/img/fh-cute-kid.gif",
    :problem    => "/img/fh-cry-kid.jpg",
    :misunderstanding    => "/img/fh-misunderstanding.jpg",
    :no_misunderstanding => "/img/fh-no-misunderstanding.png",
    :comedy     => "/img/fh-comedy.jpg",
    :scold      => "/img/fh-scold.jpg",
    :how_rude   => "/img/fh-how-rude.jpg",
    :ending     => "/img/fh-end-credits.png",
    :dj_prob    => "/img/fh-djs-problem.jpg",
    :steph_prob => "/img/fh-stephanies-problem.png",
    :mich_prob  => "/img/fh-michelles-problem.gif",
    :dj_jessie  => "/img/fh-jesse-dj.png",
    :joey       => "/img/fh-joey.jpg",
    :hugs       => "/img/fh-hugs.png",
    :you_got_it => "/img/fh-you-got-it-dude.jpg",
    :cooking    => "/img/fh-cooking.png",
    :danny      => "/img/fh-danny.jpg",
    :jesse      => "/img/fh-jesse.jpg",
    :jesse_cool => "/img/fh-jesse-cool.png"
  }
end