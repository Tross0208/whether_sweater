class Api::V1::BackgroundsController::BackgroundSerializer
  def self.background_index_serializer(data)
    {
  "data": {
    "type": "image",
    "id": "null",
    "attributes": {
      "image": {
        "location": data.location,
        "image_url": data.image_url,
        "credit": {
          "source": "flickr.com",
          "author": data.author,
          "logo": "https://live.staticflickr.com/4106/5073370116_e8b5cdf643_b.jpg"
        }
      }
    }
  }
}
end
end
