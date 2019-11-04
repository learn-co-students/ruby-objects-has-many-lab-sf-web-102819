
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end 
    
    # def artist_name
    #     if @artist.class == Artist
    #         @artist.name
    #     end
    # end

    def artist_name
        return self.artist ? self.artist.name : nil
    end

    
end


# puts hello.name 