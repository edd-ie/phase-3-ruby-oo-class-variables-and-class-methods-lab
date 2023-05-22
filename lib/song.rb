class Song
    attr_accessor :name, :artist, :genre, :count, :songs
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end
    @@count = 0
    @@artists = []
    @@genres = []

    def name
        @name
    end
    def genre
        @genre
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
    def self.artist_count
        artist = {}
        @@artists.each{|x| 
            artist.include?(x) ? artist[x] += 1 : artist[x] = 1
        }
        artist
    end
    def self.genre_count
        list = {}
        @@genres.each{|x| 
            list.include?(x) ? list[x] += 1 : list[x] = 1
        }
        list
    end

end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

# puts ninety_nine_problems.name
# # => "99 Problems"

# puts ninety_nine_problems.artists
# # => "Jay-Z"

# puts ninety_nine_problems.genre
# puts ninety_nine_problems.count