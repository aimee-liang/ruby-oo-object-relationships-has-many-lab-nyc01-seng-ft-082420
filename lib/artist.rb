class Artist

    attr_accessor :name, :songs

    @@song_count = 1

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @@song_count += 1
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @songs << song
        @@song_count += 1
    end

    def self.song_count
        @@song_count
        # unsure why I get expected 3, got 2. Only incremented twice?
    end

end