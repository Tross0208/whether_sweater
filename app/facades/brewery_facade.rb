class BreweryFacade
  def self.total_results(location, quantity)
    data = BreweryService.get_breweries(location, quantity)
  end
end
