class Song
  attr_accessor :name, :artist_name
  @@all = []

 def self.create
   song = self.new
   song.save
   song 
 end
 
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    return song
  end
  
  def self.create_by_name(name)
    new_song = self.create
    new_song.name = name
    @@all = new_song
    return new_song 
  end
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    self.create_by_name(name) || self.find_by_name(name)
      
  end 
end
