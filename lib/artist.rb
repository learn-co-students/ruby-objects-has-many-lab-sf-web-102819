require_relative "song"

class Artist 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def self.song_count
        Song.all.length
    end


    def songs
        Song.all.select { |song| song.artist == self}
    end

    def add_song(name)
        name.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        
        # OPTION 1
        add_song(new_song)

        # OPTION 2
        # new_song.artist = self
    end




end 
