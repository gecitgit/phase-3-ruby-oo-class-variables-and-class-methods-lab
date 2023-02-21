require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
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

    def self.genre_count
        genre_hash = Hash.new
        @@genres.each do |i|
            if genre_hash[i]
                genre_hash[i] += 1
            else
                genre_hash[i] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash.new
        @@artists.each do |artist|
            if artist_hash[artist]
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        artist_hash

    end

end
