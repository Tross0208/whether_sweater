class BookFacade
  def self.search_books(location)
    data = BookService.get_books(location)
  end
end
