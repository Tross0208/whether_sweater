require 'rails_helper'

RSpec.describe BreweryFacade do
  it 'creates brewery poros', :vcr do
    result = BreweryFacade.total_results("denver", "5")
    
    expect(result.count).to eq(5)
    expect(result.first.name).to eq("10 Barrel Brewing Co - Denver")
  end



end
