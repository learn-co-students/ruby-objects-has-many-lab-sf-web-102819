require_relative "song"

class Artist 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select { |song| song.artist == self}
    end
    
    # Artist.song_count is a class method that returns the total number of songs associated to all existing artists
    def self.song_count
        Song.all.length
    end


    # The #add_song_by_name method should take in an argument of a name (or title), use that argument to create a new song (or post) and then associate the objects.
    def add_song(name)
        name.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        
        # OPTION 1song
        add_song(new_song)

        # OPTION 2
        # new_song.artist = self
    end




end 


