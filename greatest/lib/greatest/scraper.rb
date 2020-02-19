class Greatest::Scraper
  
  def self.scraper_player
    
    site = "https://www.lineups.com/articles/top-50-nba-players-all-time/"
    
  doc = Nokogiri::HTML(open(site))

nba_players = doc.css("span.ez-toc-section")

nba_players.each do |r|
  name= r.text
  Greatest::Player.new(name)
end
  
   
end
 
end