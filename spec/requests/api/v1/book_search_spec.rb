require 'rails_helper'

RSpec.describe "Books API" do
  it 'returns serialized books', :vcr do
    get "/api/v1/book-search?location=denver,co&quantity=5"
    expect(response).to be_successful
  end
end
