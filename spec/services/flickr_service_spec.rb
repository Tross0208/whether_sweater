require 'rails_helper'

RSpec.describe "Flickr service" do

  it "gets popular image", :vcr do
    json = FlickrService.get_image("denver")

    expect(json).to have_key(:photos)
  end

end
