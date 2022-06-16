require 'rails_helper'

RSpec.describe "User API Request" do
  it 'returns serialized forecast', :vcr do

    body = {
        email: 'tim@gmail.com',
        password: 'timmy',
        password_confirmation: 'timmy'
      }

      headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      }
    response = post "/api/v1/users", headers: headers, params: JSON.generate(body)
    full_response=JSON.parse(response.body, symbolize_names: true)
    
    expect(response).to eq(200)
  end
end
