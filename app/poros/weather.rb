class Weather
  attr_reader :temperature, :conditions

  def initialize(weather)
    @temperature = ((weather[:temp]-273)*1.8+32).round
    @conditions = weather[:weather].first[:description]
  end

end
