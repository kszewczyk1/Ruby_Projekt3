require 'rspec'
require_relative '../spec/spec_helper'

describe 'Manager' do

  obj = Manager.new

  it 'should add' do
    expect{
      obj.addBook("tytul", "autor", "rok_wydania", "cena")
    }.not_to raise_error
  end

  it 'should output' do
    expect {
      obj.getBooks
    }.not_to raise_error
  end

  it 'should delete' do
    expect{
      obj.deleteBook(1)
    }.not_to raise_error
  end

  it 'should edit' do
    expect{
      obj.updateBook(1, "tytul", "autor", "rok_wydania", "cena")
    }.not_to raise_error
  end

  it 'should get class variable' do
    expect{
      Manager.books
      }.not_to raise_error
  end

end