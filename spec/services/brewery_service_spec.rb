require 'rails_helper'

RSpec.describe "Brewery service" do

  it "gets breweries by search", :vcr do
    json = BreweryService.get_breweries("denver", "5")
    binding.pry
    expect(json.count).to eq(5)
    expect(json[0][:city]).to eq("Denver")
  end

end
