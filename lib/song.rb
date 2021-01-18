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
































# class Song
#     attr_accessor :name, :artist, :genre

#     @@count = 0
#     @@artists =[]
#     @@genres = []

#     def initialize(name, artist, genre)
#         @name = name
#         @artist = artist
#         @genre = genre
#         @@artists << artist
#         @@count += 1
#         @@genres << genre
#     end

#     def self.count 
#         @@count
#     end

#     def self.genres
#         @@genres.uniq
#     end

#     def self.artists
#         @@artists.uniq
#     end

#     def self.genre_count
#         genre_count = Hash.new(0)
#         #create key/value pairs of "genre" = count
#         @@genres.each do |genre| 
#             #binding.pry
#             genre_count[genre] += 1 
#         end
#         genre_count
#     end

#     def self.artist_count
#         artist_count = Hash.new(0)
#         @@artists.each {|artist| artist_count[artist] += 1}
#         artist_count
#     end
# end

# require 'pry'
# class Song
#     attr_accessor :name, :artist, :genre

#     @@count = 0
#     @@names = []
#     @@artists = []
#     @@genres = []
    

#     def initialize(name, artist, genre)
#         @name = name
#         @artist = artist
#         @genre = genre
#         @@names << name
#         @@artists << artist
#         @@genres << genre
#         @@count += 1
#     end
#     def self.count
#         @@count
#     end
#     def self.genres
#         @@genres.uniq
#     end
#     def self.artists
#         @@artists.uniq
#     end
#     def self.genre_count
#         genre_counter = Hash.new
#         @@genres.each {|genre_name| genre_count[genre_name] +=1}
#         @genre_count
#     end


#     #     @@genres.each do |key_of_genre|
#     #         if key_of_genre == @@genre_count.keys.any?
#     #             @@genre_count[key_of_genre.to_s] += 1
#     #         else 
#     #             @@genre_count[key_of_genre.to_s] = 1
#     #         end
#     #     end
#     #     @@genre_count
#     # end
# end