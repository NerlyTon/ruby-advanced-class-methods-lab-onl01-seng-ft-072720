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
  
  # def self.create
  #   song = self.new 
  #   # song.name = name
  # return  @@all << song
  # end

end
