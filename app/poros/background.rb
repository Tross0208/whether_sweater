class Background
attr_reader :location, :image_url, :author
  def initialize(data, location)
    @location = location
    @image_url = "flickr.com/photos/#{data[:owner]}/#{data[:id]}"
    @author = data[:owner]
  end
end
