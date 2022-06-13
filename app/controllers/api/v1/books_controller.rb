class Api::V1::BooksController < ApplicationController
  def index
    books = BookFacade.search_books(params[:location], params[:quantity])
    location = MapFacade.get_coords(params[:location])
    weather = WeatherFacade.get_weather(location)
    binding.pry
    render json: BookSerializer.books_index(books, weather)
  end
end
