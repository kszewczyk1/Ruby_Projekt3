require_relative '../spec/spec_helper'

class Manager
  class << self; attr_accessor :books end
  class << self; attr_accessor :rents end
  @@books = Array.new
  @@rents = Array.new

  def addBook(title, author, release_year, price)
    id = @@books.size + 1
    b = Book.new(id, title, author, release_year, price)
    @@books.push(b)
  end

  def getBooks
    @@books.each do |i|
      print i.id
      print ') tytul: '
      print i.title
      print ' autor: '
      print i.author
      print ' rok wydania: '
      print i.release_year
      print ' cena: '
      puts i.price
    end
  end

  def deleteBook(id)
    id = id.to_i - 1
    @@books.delete_at(id)
    @@books.each do |i|
      if (i.id > id)
        i.id = i.id - 1
      end
    end
  end

  def updateBook(id, title, author, release_year, price)

    @@books[id - 1] = Book.new(id, title, author, release_year, price)
  end

  def addRent(id_book, rent_date, return_date)
    id = @@rents.size + 1
    r = Rent.new(id, id_book, rent_date, return_date)
    @@rents.push(r)
  end

  def getRents
    @@rents.each do |i|
      print i.id
      print ') id ksiazki: '
      print i.id_book
      print ' data wypozyczenia: '
      print i.rent_date
      print ' data zwrotu: '
      print i.return_date
    end
  end

  def deleteRent(id)
    id = id.to_i - 1
    @@rents.delete_at(id)
    @@rents.each do |i|
      if (i.id > id)
        i.id = i.id - 1
      end
    end
  end

  def updateRent(id, id_book, rent_date, return_date)

    @@rents[id - 1] = Rent.new(id, id_book, rent_date, return_date)
  end
end
