require 'rails_helper'

RSpec.describe "Background API Request" do
  it 'returns serialized background', :vcr do
    response = get "/api/v1/backgrounds?location=denver,co"
    expect(response).to eq(200)
  end

  it 'rejects requests without location' do
    response = get "/api/v1/backgrounds"
    expect(response).to eq(404)
  end
end
