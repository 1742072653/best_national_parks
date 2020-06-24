class BestNationalParks::Park 
  attr_accessor:name, :ranking, :url, :description
  @@all = [] 
  
  def initialize(park)
    park.each {|key,value| self.send(("#{key}="),value)}
    @@all << self
  end
  
  def self.all 
    @@all 
  end
end