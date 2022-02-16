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

  it "can tell which customers owe a balance" do
    expect(marco.check_balances).to eq([])
    bobby.charge(17)
    # binding.pry
    expect(marco.check_balances).to eq([bobby])
  end

  it "can also tell when a balance is paid off" do
    hendrixx.charge(30)
    expect(marco.check_balances).to include(hendrixx)
    hendrixx.pay(30)
    expect(marco.check_balances).not_to include(hendrixx)
  end

  rico = Pet.new({name: "Rico", type: :dog, age: 3})
  rocco = Pet.new({name: "Rocco", type: :dog, age: 4})
  lucy = Pet.new({name: "Lucy", type: :cat, age: 45})

  it "can count pets" do
    expect(marco.count_pets(:dog)).to eq(0)
    hendrixx.adopt(rico)
    bobby.adopt(rocco)
    bobby.adopt(lucy)
    expect(marco.count_pets(:dog)).to eq(2)
  end
end
