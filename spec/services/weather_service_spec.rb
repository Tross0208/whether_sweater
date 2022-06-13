require 'rails_helper'

RSpec.describe "Twitter service" do

  it "gets weather forecast" do
    json = WeatherService.get_weather(39.73, -104.99)
    binding.pry
    expect(json).to have_key(:lat)
  end

end
