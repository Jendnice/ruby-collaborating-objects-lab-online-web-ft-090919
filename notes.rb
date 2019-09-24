class Song
  attr_accessor :title
 
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
 
end

-------------------------------------------------------
 
class MP3Importer
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end

-------------------------------------------------------

class Song
  attr_accessor :artist
 
  # other methods
 
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end

-------------------------------------------------------

class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
 
  # other methods
end

-------------------------------------------------------

require 'pry'

class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select { |song| song.artist == self }  
  end 
  
  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end 
    
  def self.song_count
    Song.all.count 
  end 
  
end

-------------------------------------------------------

class Song 
  attr_accessor :name, :artist 
  
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
  
  def artist_name 
   if self.artist == nil 
    puts nil 
   else 
   self.artist.name 
   end 
 end 
    
end 

