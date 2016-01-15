require 'rspec'
require_relative '../spec/spec_helper'

describe 'Manager' do

  obj = Manager.new

  it 'should add book' do
    expect{
      obj.addBook("title", "author", "release_year", "price")
    }.not_to raise_error
  end

  it 'should get books' do
    expect {
      obj.getBooks
    }.not_to raise_error
  end

  it 'should delete book' do
    expect{
      obj.deleteBook(1)
    }.not_to raise_error
  end

  it 'should edit book' do
    expect{
      obj.updateBook(1, "title", "author", "release_year", "price")
    }.not_to raise_error
  end

  it 'should get class variable' do
    expect{
      Manager.books
      }.not_to raise_error
  end

  it 'should add rent' do
    expect{
      obj.addRent("id_book", "rent_date", "return_date")
    }.not_to raise_error
  end

  it 'should get rents' do
    expect {
      obj.getRents
    }.not_to raise_error
  end

  it 'should delete rent' do
    expect{
      obj.deleteRent(1)
    }.not_to raise_error
  end

  it 'should edit rent' do
    expect{
      obj.updateRent(1, "id_book", "rent_date", "return_date")
    }.not_to raise_error
  end

  it 'should get class variable' do
    expect{
      Manager.rents
    }.not_to raise_error
  end
end