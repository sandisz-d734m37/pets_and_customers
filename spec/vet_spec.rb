require 'pry'
require './lib/customer'
require './lib/pet'
require './lib/vet'

describe Vet do
  jill = Vet.new("Jill")

  it "exists" do
    expect(jill).to be_an_instance_of(Vet)
  end

  it "has a name" do
    expect(jill.name).to eq("Jill")
  end

  bill = Customer.new("Bill", 0)
  will = Customer.new("Will", 1)

  it "has customers" do
    expect(jill.customers).to eq([])
    jill.custy_acquire(bill)
    jill.custy_acquire(will)
    expect(jill.customers).to eq([bill, will])
  end

  milly = Pet.new({name: "Milly", type: :cat, age: 3})
  jilly = Pet.new({name: "Iilly", type: :dog, age: 2})
  hilly = Pet.new({name: "Hilly", type: :dog, age: 1})

  it "has customers with pets" do
    expect(jill.pets).to eq([])
    bill.adopt(milly)
    bill.adopt(hilly)
    jill.custy_pets(bill)
    expect(jill.pets).to eq([milly, hilly])
    will.adopt(jilly)
    jill.custy_pets(will)
    expect(jill.pets).to eq([jilly])
  end

  it "can list all pets" do
    expect(jill.all_pets).to eq([milly, jilly, hilly])
  end

  it "can count given customers pets" do
    expect(jill.count_pets(bill)).to eq(2)
    expect(jill.count_pets(will)).to eq(1)
  end

end
