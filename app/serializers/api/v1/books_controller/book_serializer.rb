class Api::V1::BooksController::BookSerializer
  def self.books_index(books_data, weather, location_data)
    {
  data: {
    id: nil,
    type: "books",
    attributes: {
      destination: location_data,
      forecast: {
        summary: weather[:current][:weather].first[:description],
        temperature: weather[:current][:temp]
      },
      total_books_found: 172,
      books: books_data.map do |book|
        {
          isbn: book[:isbn],
          title: book[:title],
          publisher: book[:publisher]
        }
      end
    }
  }
}

  end
end
