require 'rails_helper'

RSpec.describe BookFacade do
  it 'returns quantity of books by location', :vcr do
    result = BookFacade.search_books("denver,co", 5)
    expect(result.count).to eq(5)
  end

  it 'returns total search results found', :vcr do
    result = BookFacade.total_results("denver,co")
    expect(result).to eq(42475)
  end

end
