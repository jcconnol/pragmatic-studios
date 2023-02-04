require_relative 'my_enumerable'

class Song
    attr_reader :name, :artist, :duration
  
    def initialize(name, artist, duration)
      @name = name
      @artist = artist
      @duration = duration
    end
  
    def play
      puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
    end
end


song1 = Song.new("cheatcode", "Hairitage", 100)
song2 = Song.new("Sabotage", "Beastie Boys", 323)
song3 = Song.new("No Sleep Till Brooklyn", "Beastie Boys", 192)
song4 = Song.new("Kingdom in the Sky", "Divinci something", 728)


puts song1.play
puts song2.play
puts song3.play
puts song4.play


class Playlist
    include MyEnumerable

    def initialize(name)
      @name = name
      @songs = []
    end
  
    def add_song(song)
      @songs << song
    end

    def each
        @songs.each { |s| yield s }
    end

    def play_songs
        each { |song| song.play }
    end

    def each_tagline
        @songs.each { |s| yield "#{s.name} - #{s.artist}" }
    end

    def each_by_artist(artist)
        @songs.select { |n| n.artist =~ /#{artist}/ }.each { |s| yield s }
    end
end


playlist = Playlist.new("cool songs")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)
playlist.add_song(song4)

playlist.each { |song| song.play }

playlist.play_songs

beast_songs = playlist.my_select { |song| song.artist =~ /Beast/ }
p beast_songs


playlist.each_tagline { |tagline| puts tagline }

puts playlist.each_by_artist("Beastie Boys") { |song| song.play }

song_labels = playlist.my_map { |song| "#{song.name} - #{song.artist}" }
p song_labels


non_okie_songs = playlist.my_reject { |song| song.name =~ /Okie/ }
p non_okie_songs

p playlist.my_detect { |song| song.artist == "Beastie Boys" }

p playlist.my_any? { |song| song.artist == "Beastie Boys" }









