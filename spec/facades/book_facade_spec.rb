require 'rails_helper'

RSpec.describe BookFacade do
  it 'returns quantity of books by location', :vcr do
    result = BookFacade.search_books("denver,co", 5)
    expect(result.count).to eq(5)
  end

end
