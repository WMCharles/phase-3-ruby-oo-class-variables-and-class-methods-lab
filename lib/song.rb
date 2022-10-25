class Song
    attr_reader :name, :artist, :genre

    # class variables
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    # class method count
    def self.count 
        @@count 
    end

    # class method artists 
    def self.artists
        @@artists.uniq
    end

    # class method genres 
    def self.genres 
        @@genres.uniq 
    end

    # class method genre_count
    def self.genre_count
        @@genres.tally
    end

    # class method artist_count
    def self.artist_count
        @@artists.tally
    end
end

song = Song.new("99 problems", "Jay-Z", "rap")
song = Song.new("99 problems", "Jay-Z", "rap")
song = Song.new("cold heart", "gyptian", "riddim")
# puts song.name 
# puts song.artist
# puts song.genre
p Song.artist_count