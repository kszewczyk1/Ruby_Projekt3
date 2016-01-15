class Rent
  attr_accessor :id, :id_book, :rent_date, :return_date

  def initialize(id, id_book, rent_date, return_date)
    @id = id
    @id_book = id_book
    @rent_date = rent_date
    @return_date = return_date
  end
end