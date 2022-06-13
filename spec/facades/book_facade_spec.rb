require 'rails_helper'

RSpec.describe BookFacade do
  it 'returns books by location', :vcr do
    result = BookFacade.search_books("denver,co")
    expect(result[:numFound]).to be_an(Integer)
  end

end
