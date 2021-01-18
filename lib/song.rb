require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@names = []
    @@artists = []
    @@genres = []

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
        @@count +=1
        @@names << name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.songs
        @@names
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
        genre_counter = Hash.new(0)
        @@genres.map do |genre_category|
            genre_counter[genre_category] += 1
        end
        genre_counter
    end
    def self.artist_count
        artist_counter = Hash.new(0)
        @@artists.map do |artist_name|
            artist_counter[artist_name] += 1
        end
        artist_counter
    end
        
end

