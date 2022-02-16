require './lib/pet'

describe Pet do
  it "exists" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    # binding.pry
    expect(samson).to be_an_instance_of(Pet)
  end

  it "has a name" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson.name).to eq("Samson")
  end
end
