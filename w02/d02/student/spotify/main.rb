require_relative 'playlist'
require_relative 'song'

nothing_compares_to_you = Song.new("Nothing Compares 2 U", "Sinead O'Conner")
nothing_compares_to_you.play
i_know_its_over         = Song.new("I know it's over", "The Smiths")
call_your_girlfriend    = Song.new("Call Your Girlfriend", "Robyn")
take_it_on_the_run      = Song.new("Take It On The Run", "REO Speedwagon")

travs_new_playlist = Playlist.new("breakup mix")

travs_new_playlist.add_song(nothing_compares_to_you)
travs_new_playlist.add_song(i_know_its_over)
travs_new_playlist.add_song(call_your_girlfriend)
travs_new_playlist.add_song(take_it_on_the_run)
