class BackgroundFacade
  def self.get_image(location)
    data = FlickrService.get_image(location)
    first_image = data[:photos][:photo].first
    
    image = Background.new(first_image, location)
  end
end
