require 'rspec'
require_relative '../spec/spec_helper'

describe 'Rent' do

  before :each do
    @rent = Rent.new :id, :id_book, :rent_date, :return_date
  end

  describe "#new" do
    it "takes 4 parameters and returns a Rent object" do
      expect(@rent).to be_an_instance_of(Rent)
    end
  end

  describe "#id" do
    it "returns the correct id" do
      expect(@rent.id).to equal :id
    end
  end

  describe "#id_book" do
    it "returns the correct id_book" do
      expect(@rent.id_book).to equal :id_book
    end
  end

  describe "#rent_date" do
    it "returns the correct rent_date" do
      expect(@rent.rent_date).to equal :rent_date
    end
  end

  describe "#return_date" do
    it "returns the correct return_date" do
      expect(@rent.return_date).to equal :return_date
    end
  end
end