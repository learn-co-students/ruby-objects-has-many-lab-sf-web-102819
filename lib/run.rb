require "pry"

require_relative "artist"
require_relative "song"

require_relative("author")
require_relative("post")


hello = Song.new('Hello')
rolling_in_the_deep = Song.new("Rolling In The Deep")
hotline_bling = Song.new("Hotline Bling")
passion_fruit = Song.new("Passionfruit")

adele = Artist.new("Adele")
drake = Artist.new("Drake")

adele.add_song_by_name("Hello")
adele.add_song_by_name("Roling In The Deep")

drake.add_song_by_name("Hotling Bling")

# hello.artist = adele




betty = Author.new("Betty")
adam = Author.new("Adam")


betty.add_post_by_title("Betty1")
betty.add_post_by_title("Betty2")
adam.add_post_by_title("Adam1")





binding.pry

puts "lab"