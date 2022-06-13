class BookService
  def self.get_books(location)
    response = conn.get("search.json?q=#{location}")
    get_json(response)
  end

  def self.get_json(response)
   JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('http://openlibrary.org')
  end
end
