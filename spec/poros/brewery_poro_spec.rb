require 'rails_helper'

RSpec.describe "Brewery Poro" do

  it "creates brewery from json", :vcr do
    json = {:id=>"10-barrel-brewing-co-denver-denver",
            :name=>"10 Barrel Brewing Co - Denver",
            :brewery_type=>"large",
            :street=>"2620 Walnut St",
            :address_2=>nil,
            :address_3=>nil,
            :city=>"Denver",
            :state=>"Colorado",
            :county_province=>nil,
            :postal_code=>"80205-2231",
            :country=>"United States",
            :longitude=>"-104.9853655",
            :latitude=>"39.7592508",
            :phone=>"7205738992",
            :website_url=>nil,
            :updated_at=>"2021-10-23T02:24:55.243Z",
            :created_at=>"2021-10-23T02:24:55.243Z"}

    this_brewery = Brewery.new(json)

    expect(this_brewery.name).to eq("10 Barrel Brewing Co - Denver")
    expect(this_brewery.id).to eq("10-barrel-brewing-co-denver-denver")
    expect(this_brewery.brewery_type).to eq("large")
  end

end
