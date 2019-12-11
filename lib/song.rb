require "pry"

class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@all_songs = []

    attr_accessor :name, :artist, :genre
    
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << @artist
        @@genres << @genre
        @@all_songs << {:name => @name, :artist => @artist, :genre => @genre}
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
        self.genres.each do |genre|
            genre_count = 0
            @@all_songs.uniq.each do |song|
                if song[:genre] == genre
                    genre_count +=1
                end
            end
            genre_count_hash[genre] = genre_count
        end
        genre_count_hash
    end

    # more elegant method but don't understand how this works!
    def self.artist_count
        artist_count = @@artists.inject(Hash.new(0)) { |artist, name| 
        artist[name] += 1; 
        artist }
        artist_count
    end
    # i think what this is doing is it is creating a new hash, looping through @@artists, and for each person aka artist it
    # creating creating a new person and counting the numebr of people in the @@artists hash. it increments the count each time
    # then sets a person with a value of the count, and a key of name, then it returns this formed artist and injects it to the 
    # new hash.
end