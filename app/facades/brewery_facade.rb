class BreweryFacade
  def self.total_results(location, quantity)
    data = BreweryService.get_breweries(location, quantity)
    breweries = get_breweries(data)
  end

  def self.get_breweries(breweries)
    breweries.map {|brewery| Brewery.new(brewery)}
  end
end
