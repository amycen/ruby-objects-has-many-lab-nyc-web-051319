class Artist
    attr_accessor :name
    @@all_songs = []

    def initialize(name)
        @name = name
        @songs = []
    end
    
    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
        @songs << song
        @@all_songs << song
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    end

    def self.song_count
        @@all_songs.count
    end
end