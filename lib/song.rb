require 'pry'

class Song 
  
  attr_accessor :name, :artist, :artist_name
  
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
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist 
    song
    end 
    
  # new_instance = Song.new_by_filename(file_name)
  # expect(new_instance.artist.name).to eq('Michael Jackson')
  # expect(Artist.all.size).to eq(1)
  # expect(Artist.all.first.songs.empty?).to eq(false)
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  #   self.artist.name
  end 

  
end 
