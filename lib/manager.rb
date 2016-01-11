require_relative '../spec/spec_helper'

class Manager
  class << self; attr_accessor :books end
  @@books = Array.new

  def addBook(title, author, release_year, price)
    id = @@books.size + 1
    k = Book.new(id, title, author, release_year, price)
    @@books.push(k)
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

end
