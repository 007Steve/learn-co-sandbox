class Greatest::Player
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
   Greatest::Scraper.scraper_player if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
end
end