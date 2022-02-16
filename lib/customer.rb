class Customer
  attr_reader :name, :id, :pets
  def initialize(name, id, pets = [])
    @name = name
    @id = id
    @pets = pets
  end
end
