class BestNationalParks::CLI 
  def call 
    BestNationalParks::Scraper.new.make_parks
    park = BestNationalParks::Park.all
    puts "#{park[0].name}"
  end
  
end