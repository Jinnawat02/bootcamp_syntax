# book_service.rb
class BookService
  def initialize(repository = BookRepository.new)
    @repository = repository
  end

  def add_book(id, title, author)
    return unless @repository.find_by_id(id).nil?

    new_book = Book.new(id, title, author)
    @repository.add(new_book)
    new_book
  end

  def update_book(id, attributes = {})
    found_book = @repository.find_by_id(id)
    return nil if found_book.nil?

    title = attributes[:title]
    author = attributes[:author]

    found_book.title = title unless title.nil?
    found_book.author = author unless author.nil?

    found_book
  end

  def delete_book(id)
    @repository.delete(id)
  end

  def list_books
    @repository.all.map(&:info)
  end
end
