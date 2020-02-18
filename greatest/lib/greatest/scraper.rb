class Greatest::Scraper
  
  def self.scraper_player
    
    site = "https://www.foxsports.com/nba/gallery/ranking-the-25-greatest-players-in-nba-history-100716"
    
  doc = Nokogiri::HTML(open(site))

nba_players = doc.css("h2.gallery-title-text")

nba_players.each do |r|
  name= r.text
  Greatest::Player.new(name)
end
  
   
end
 
end