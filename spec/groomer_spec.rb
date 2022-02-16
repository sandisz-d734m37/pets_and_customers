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
end
