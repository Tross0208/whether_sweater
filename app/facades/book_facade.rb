class BookFacade
  def self.search_books(location, quantity)

    data = BookService.get_books(location)
    #refactor meeee
    if data[:docs].count > quantity.to_i
      books = []
      i = 0
      while i < quantity.to_i
        books << data[:docs][i]
        i += 1
      end
    else
      books = data[:docs]
    end
    return books
  end
end
