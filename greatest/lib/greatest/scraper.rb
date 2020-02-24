require 'pry'
class Greatest::Scraper
  
  def self.scrapers
    doc = Nokogiri::HTML(open("https://wagwalking.com/breed/top-dog-breeds-of-this-year")).css('div.item-block')
  end
  
  
  def self.scraper_dogs
    
      self.scrapers.each do |dogz|
        name = dogz.search("h3.item__title").text.strip
        info = dogz.search("div.rich-text").text
        
        Greatest::Dog.new(name, info)
      end
    end
end