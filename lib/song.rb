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
    song = self.create
    song.name = name
    return song
  end
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
   song = self.find_by_name(name)
   if song 
     song
   else
     self.create_by_name(name)
   end
 end
 
  def self.alphabetical
    self.all.sort_by{|a| a.name}
  end
  
  def self.new_from_filename(name)
    song = self.new
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    @@all << song
    song
  end
    
      

end
