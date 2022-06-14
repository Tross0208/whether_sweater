require 'rails_helper'

RSpec.describe "Books API" do
  xit 'returns serialized books', :vcr do
    response = get "/api/v1/book-search?location=denver,co&quantity=5"

    expect(response).to eq(200)
  end
end
