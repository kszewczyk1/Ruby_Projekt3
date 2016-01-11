require_relative '../spec/spec_helper'

describe Book do

  before :each do
    @book = Book.new :id, :title, :author, :release_year, :price
  end

  describe "#new" do
       it "takes 5 parameters and returns a Book object" do
         @book.should be_an_instance_of Book
       end
  end

  describe "#id" do
    it "returns the correct id" do
      @book.id.should eql :id
    end
  end

  describe "#tytul" do
    it "returns the correct tytul" do
      @book.title.should eql :title
    end
  end

  describe "#autor" do
    it "returns the correct autor" do
      @book.author.should eql :author
    end
  end

  describe "#rok_wydania" do
    it "returns the correct rok wydania" do
      @book.release_year.should eql :release_year
    end
  end

  describe "#cena" do
    it "returns the correct cena" do
      @book.price.should eql :price
    end
  end

end