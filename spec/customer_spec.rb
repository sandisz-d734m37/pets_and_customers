require 'pry'
require './lib/customer'
require './lib/pet'

describe Customer do
  joel = Customer.new("Joel", 2)
  it "exists" do
    expect(joel).to be_an_instance_of(Customer)
  end

  it "has a name & ID" do
    expect(joel.name).to eq("Joel")
    expect(joel.id).to eq(2)
  end

  it "wants pets, you might say" do
    expect(joel.pets).to eq([])
  end

  samson = Pet.new({name: "Samson", type: :dog, age: 3})
  lucy = Pet.new({name: "Lucy", type: :cat, age: 12})

  it "can adopt pets" do
    joel.adopt(samson)
    joel.adopt(lucy)

    expect(joel.pets).to eq([samson, lucy])
  end

end
