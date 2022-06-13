require 'rails_helper'

RSpec.describe "Book service" do

  it "gets books by search", :vcr do
    json = BookService.get_books("denver,co")

    expect(json[:numFound]).to be_an(Integer)
  end

end
