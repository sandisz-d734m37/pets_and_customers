require 'pry'
require './lib/customer'
require './lib/pet'

describe Customer do
  it "exists" do
    joel = Customer.new("Joel", 2)
  end
end
