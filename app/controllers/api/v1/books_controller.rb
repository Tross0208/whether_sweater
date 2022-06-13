class Api::V1::BooksController < ApplicationController
  def index
    books = BookFacade.search_books(params[:location])
  end
end
