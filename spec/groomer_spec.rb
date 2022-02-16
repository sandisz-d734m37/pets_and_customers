require 'pry'
require './lib/customer'
require './lib/pet'
require './lib/groomer'

describe Groomer do
  marco = Groomer.new("Marco")
  it "exists" do
    expect(marco).to be_an_instance_of(Groomer)
  end

  it "has a unique name" do
    expect(marco.name).to eq("Marco")
  end

  bobby = Customer.new("Bobby", 0)
  hendrixx = Customer.new("Future Hendrix", 1)
  
  it "can get a new customer" do
    expect(marco.customers).to eq([])
    marco.custy_acquire(bobby)
    marco.custy_acquire(hendrixx)
    expect(marco.customers).to eq([bobby, hendrixx])
  end
end
