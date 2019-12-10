class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre
    
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << @artist
        @@genres << genre
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

# genre count: create hash. add to hash each unique genre (call self.genres) as key with value of number of songs with that genre.
# loop through Song class and count.self if genre == genre from genres array loop

    def self.genre_count
        genre_count_hash = {}
        self.genres.each { |genre|
            genre_count_hash[genre] = .......blahblahblah
        }
    end


end