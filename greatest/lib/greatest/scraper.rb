class Greatest::Scraper
  
  def self.scraper_player
    
    site = "https://www.lineups.com/articles/top-50-nba-players-all-time/"
    
    doc = Nokogiri::HTML(open(site))

    players = doc.css("span.ez-toc-section")
     
     
     
    
end
  
   

 
end