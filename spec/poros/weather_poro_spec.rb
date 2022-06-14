require 'rails_helper'

RSpec.describe "Weather Poro" do

  it "creates weather from json", :vcr do
    json = {:dt=>1655224454,
      :sunrise=>1655206286,
      :sunset=>1655260150,
      :temp=>300,
      :feels_like=>293.35,
      :pressure=>1003,
      :humidity=>31,
      :dew_point=>276.58,
      :uvi=>7.76,
      :clouds=>26,
      :visibility=>10000,
      :wind_speed=>2.2,
      :wind_deg=>41,
      :wind_gust=>5.41,
      :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}]}

    this_weather = Weather.new(json)

    expect(this_weather.temperature).to eq(81)
    expect(this_weather.conditions).to eq("scattered clouds")

  end

end
