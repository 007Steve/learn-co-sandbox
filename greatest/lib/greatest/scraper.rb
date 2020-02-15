class Greatest::Scraper
  
  def self.scraper_player
  doc = Nokogiri::HTML(open("https://bleacherreport.com/articles/1795233-10-greatest-nba-players-of-all-time#slide9"))  
  binding.pry 
end

end