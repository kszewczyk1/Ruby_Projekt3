class Book
  attr_accessor :id, :title, :author, :release_year, :price

  def initialize(id, title, author, release_year, price)
    @id = id
    @title = title
    @author = author
    @release_year = release_year
    @price = price
  end

end