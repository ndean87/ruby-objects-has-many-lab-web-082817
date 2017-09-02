require 'pry'

class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def self.song_count
    @@song_count
  end

  def self.add_to_song_count
    @@song_count += 1
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    puts "add song"
    @songs << song
    song.artist = self
    self.class.add_to_song_count
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    # new_song.name === 'hello'
    new_song.artist = self
    # new_song.artist === adele
    @songs << new_song
    self.class.add_to_song_count
  end

end
