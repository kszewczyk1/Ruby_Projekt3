require 'rspec'
require_relative '../spec/spec_helper'

describe 'Book' do

  before :each do
    @book = Book.new :id, :title, :author, :release_year, :price
  end

  describe "#new" do
     it "takes 5 parameters and returns a Book object" do
       expect(@book).to be_an_instance_of(Book)
     end
  end

  describe "#id" do
    it "returns the correct id" do
      expect(@book.id).to equal :id
    end
  end

  describe "#tytul" do
    it "returns the correct tytul" do
      expect(@book.title).to equal :title
    end
  end

  describe "#autor" do
    it "returns the correct autor" do
      expect(@book.author).to equal :author
    end
  end

  describe "#rok_wydania" do
    it "returns the correct rok wydania" do
      expect(@book.release_year).to equal :release_year
    end
  end

  describe "#cena" do
    it "returns the correct cena" do
      expect(@book.price).to equal :price
    end
  end

end