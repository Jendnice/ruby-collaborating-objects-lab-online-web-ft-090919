require 'pry'

class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song_name)
    song_name.artist = self 
    @songs << song_name
  end     
  
  def songs 
    Song.all.select { |song| song.artist == self}
  end 
  
  
  def self.find_by_name(name)
    @@all.detect { |artist| artist.name == name }
  end 
  
  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end 
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name).uniq
    else 
      self.create_by_name(name)
    end 
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end 
  
end 

