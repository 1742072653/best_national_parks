class BestNationalParks::Scraper 
  def get_page
    Nokogiri::HTML(open("https://www.indiewire.com/gallery/50-best-movies-2019-critics-poll/parasite-11/"))
  end
  
  def scrape_parks
    self.get_page.css("div[style='border: 1px solid black; border-radius: 8px; padding: 6px; margin: 8px; box-shadow: 4px 4px 4px #888']") 
  end
  
  def make_parks
    scrape_parks.each do |park|
      new_hash={
        :name => park.css("span a").text
      }
      BestNationalParks::Park.new(new_hash)
    end
  end
end