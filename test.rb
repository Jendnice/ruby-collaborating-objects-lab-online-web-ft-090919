# My original code for both Artist and Song classes below

require 'pry'

class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
  end     
  
  def songs 
    Song.all.select { |song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(name)
    if (self.name.nil?) 
      @name = Artist.new(name) 
      save
      self.name 
    else 
      self.name
    end 
  end 

  def print_songs
    self.songs.name 
  end 
    
end 

----------------------------------------------------------

class Song 
  
  attr_accessor :song, :artist 
  
  @@all_songs = []
  
  def initialize(song)
    @song = song 
    save
  end 
  
  def save 
    @@all_songs << self 
  end 
  
  def self.all
    @@all_songs 
  end 
  
end 
