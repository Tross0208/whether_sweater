require 'rails_helper'

RSpec.describe "Background Facade" do
  it 'gets background poro', :vcr  do
    location = "denver,co"
    image = BackgroundFacade.get_image(location)

    expect(image).to be_a(Background)
    expect(image.location).to eq(location)
    expect(image.image_url).to be_a(String)
    expect(image.author).to be_a(String)
  end
end
