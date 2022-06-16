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

    expect(response).to eq(204)
    expect(User.last.api_key).to be_a(String)
    expect(User.last.id).to be_a(Integer)
    expect(User.last.email).to eq("tim@gmail.com")
  end
end
