require 'pry'
require './lib/customer'
require './lib/pet'
require './lib/daycare_center.rb'

describe DaycareCenter do
  pet_center = DaycareCenter.new("Pet Center")

  it "exists" do
    expect(pet_center).to be_an_instance_of(DaycareCenter)
  end

  it "has a unique name" do
    expect(pet_center.name).to eq("Pet Center")
  end

  paul = Customer.new("Paul", 0)
  bryan = Customer.new("Bryan", 1)

  it "has customers" do
    expect(pet_center.customers).to eq([])
    pet_center.add_customer(paul)
    expect(pet_center.customers).to eq([paul])
    pet_center.add_customer(bryan)
    expect(pet_center.customers).to eq([paul, bryan])
  end

  kitty = Pet.new({name: "Kitty", type: :cat, age: 4})
  joe = Pet.new({name: "Joe", type: :dog, age: 3})
  jill = Pet.new({name: "Jill", type: :dog, age: 3})

  it "has cutomers with pets" do
    expect(pet_center.customers_pets).to eq([])
    paul.adopt(jill)
    paul.adopt(joe)
    pet_center.pets(paul)
    expect(pet_center.customers_pets).to eq([jill, joe])
    bryan.adopt(kitty)
    pet_center.pets(bryan)
    expect(pet_center.customers_pets).to eq([kitty])
  end

  it "can find customer's by their ID" do
    expect(pet_center.customer_id(0)).to eq("Paul")
    expect(pet_center.customer_id(1)).to eq("Bryan")
  end

  it "can list all pets that are unfed" do
    expect(pet_center.unfed_pets).to eq([])
    pet_center.check_unfed
    expect(pet_center.unfed_pets).to include(jill, joe, kitty)
    kitty.feed
    pet_center.check_unfed
    expect(pet_center.unfed_pets).to include(jill, joe)
    jill.feed
    joe.feed
    pet_center.check_unfed
    expect(pet_center.unfed_pets).to eq([])
  end
end
