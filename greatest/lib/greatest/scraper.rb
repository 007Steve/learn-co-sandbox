class Greatest::Scraper
  
  def scraper_player
  page = Nokogiri::HTML(open("https://bleacherreport.com/articles/1795233-10-greatest-nba-players-of-all-time#slide9"))
end

end