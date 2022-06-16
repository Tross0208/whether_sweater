class FlickrService
  def self.get_image(location)
    response = conn.get("/services/rest/?api_key=e05fa44b92c952479fcdc7b914c20765&method=flickr.photos.search&format=json&tags=#{location}&sort=relevance&nojsoncallback=true")
    get_json(response)
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.flickr.com/') do |faraday|
      faraday.params['api_key'] = ENV['flickr_api_key']
    end
  end
end
