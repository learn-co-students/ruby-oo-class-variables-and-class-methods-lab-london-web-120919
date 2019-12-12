class Song
 
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @artist = artist
        @name = name
        @genre = genre
        @@genres << genre 
        @@artists << artist
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

    def self.genre_count
        #create a hash - generes => count  
        genre_count = Hash.new(0)
        #generes is an array containing all generes
        @@genres.each {|genre, number| genre_count[genre] +=1}
        genre_count 
    end 

    def self.artist_count
       artist_count = Hash.new(0)
       @@artists.each {|artist, number| artist_count[artist] +=1}
       artist_count
    end

end