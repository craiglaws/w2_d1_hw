class Library

attr_reader :books

  def initialize()
    @books = []
    # @title = @books[:title]
    # @rental_details = @books[:rental_details]
  end

  def get_book_by_title(title)
    if @books[:title] == title
      return @books
    end
  end






end
