class BreweryService
  def self.get_breweries(location, quantity)
    response = conn.get("/breweries?by_city=#{location}&per_page=#{quantity}")
    get_json(response)
  end

  def self.get_json(response)
   JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.openbrewerydb.org')
  end
end
