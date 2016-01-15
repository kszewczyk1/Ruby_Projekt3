require '../spec/spec_helper'

class Run

  @manager = Manager.new
  @menu = Menu.new

  while true
    system "cls"
    @menu.draw
    printf "\n Podaj pozycje z menu: "
    puts case gets.chomp
           when '1'
             puts
             puts 'Podaj tytul ksiazki: '
             title = gets.chomp
             puts
             puts 'Podaj autora: '
             author = gets.chomp
             puts
             puts 'Podaj rok wydania: '
             release_year = gets.chomp
             puts
             puts 'Podaj cene...'
             price = gets.chomp
             @manager.addRent(title, author, release_year, price)
           when '2'
             puts
             puts 'Ktora ksiazke chcesz usunac? Podaj id: '
             id = gets.chomp
             @manager.deleteBook(id)
           when '3'
             puts
             puts 'Ktora ksiazke chcesz modyfikowac? Podaj id: '
             id = gets.chomp
             id = id.to_i
             puts
             puts 'Podaj tytul ksiazki: '
             title = gets.chomp
             puts
             puts 'Podaj autora: '
             author = gets.chomp
             puts
             puts 'Podaj rok wydania: '
             release_year = gets.chomp
             puts
             puts 'Podaj cene: '
             price = gets.chomp
             @manager.updateBook(id, title, author, release_year, price)
           when '4'
             puts
             @manager.getBooks
             printf "\n\n"
             printf 'Wcisnij enter...'
             gets
           when '0'
             break
           else
             puts 'zły znak!'
             gets

         end
  end

  @runclass = Run.new
  @runclass

end
