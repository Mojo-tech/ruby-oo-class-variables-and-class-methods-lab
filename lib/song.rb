class Song
    @@album_count = 0
    @@genre_count = 0
    @@artist_count = 0
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :genre, :artist
    
    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@count += 1
        @@artists << artist
        @@genres << genre

    end

    def self.total_albums
        @@album_count += 1
    end

    def self.genre_count
        @@genre_count = {}
        @@genres.each_with_object({}) do |genre, num|
            @@genres[num.first] = num.last
            @@genres
            
        end

    end

    def self.artist_count
        @@artist_count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end
    

    def self.genres
        @@genres.uniq
    end





end

