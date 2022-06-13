require 'rails_helper'

RSpec.describe "Forecast API" do
  it 'returns serialized forecast', :vcr do
    get "/api/v1/forecast?location=denver,co"
    expect(response).to be_successful
  end
end
