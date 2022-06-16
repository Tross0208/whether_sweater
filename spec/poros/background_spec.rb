require 'rails_helper'

RSpec.describe "Background image PORO" do
  it 'creates background poro from json' do
    image_data = {:id=>"52115473376", :owner=>"87116288@N05", :secret=>"be9885192b", :server=>"65535", :farm=>66, :title=>"UP 8546 Rocky, CO", :ispublic=>1, :isfriend=>0, :isfamily=>0}
    location = "denver,co"
    image = Background.new(image_data, location)

    expect(image).to be_a(Background)
    expect(image.location).to eq("denver,co")
    expect(image.image_url).to eq("flickr.com/photos/87116288@N05/52115473376")

  end
end
