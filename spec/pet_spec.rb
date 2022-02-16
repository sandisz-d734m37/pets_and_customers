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

  it "is a dog" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson.type).to eq(:dog)
  end

  it "is 3 years old" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson.age).to eq(3)
  end

  it "can eat" do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson.fed?).to be false
    samson.feed
    expect(samson.fed?).to be true
  end
end
