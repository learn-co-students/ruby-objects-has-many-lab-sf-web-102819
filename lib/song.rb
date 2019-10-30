require_relative 'artist.rb'

class Song

    attr_accessor :artist, :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if artist.class == Artist
        @artist.name
        end
    end

end