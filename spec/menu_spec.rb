require 'rspec'
require_relative '../spec/spec_helper'

describe 'Menu' do

  obj = Menu.new

  it 'should not raise error' do
    expect{obj.draw}.not_to raise_error
  end
end