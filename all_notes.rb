# ARTIST 

require 'pry'

class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    save
  end 
  
  def add_song(song)
    self.songs << song 
  end 
  
  def save
   @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
 def songs 
    Song.all.select { |song| song.artist == self }  
  end 
  
  #def add_song_by_name(song)
  #  song = Song.new(song)
  # add_song(song)
  # end 
  

  
  def self.find_by_name(name)
    @@all.detect { |artist| artist.name == name }
  end 
  
  def self.create_by_name(name)
    artist = Artist.new(name)
    save
    artist
  end 
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else 
      self.create_by_name(name)
    end 
  end 

  def print_songs
    self.songs.name 
  end 
  
 

 # def self.song_count
 #   Song.all.count 
 # end 
  
end


# SONG:

class Song 
  attr_accessor :song, :artist 
  
  @@all = []
  
  def initialize(song)
    @song = song 
    save
  end 
  
  def save
    @all < self 
  end 
  
  def self.all
    @@all
  end 
  
  def artist_name 
   if self.artist == nil 
    puts nil 
   else 
   self.artist.name 
   end 
 end 
    
end 


