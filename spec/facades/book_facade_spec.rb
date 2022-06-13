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

  it 'returns all search results if total is less than quantity', :vcr do

    response_body = File.read("spec/fixtures/few_results.json")
      stub_request(:get, "http://openlibrary.org/search.json?q=clarendon,tx").
        with(
          headers: {
            'Accept'=>'*/*',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent'=>'Faraday v2.3.0'
          }).
          to_return(status: 200, body: response_body, headers: {})
    result = BookFacade.search_books("clarendon,tx", 5)
    expect(result.count).to eq(4)
  end

end
