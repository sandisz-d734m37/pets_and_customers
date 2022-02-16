class Customer
  attr_accessor :outstanding_balance
  attr_reader :name, :id, :pets
  def initialize(name, id, pets = [])
    @name = name
    @id = id
    @pets = pets
    @outstanding_balance = 0
  end

  def adopt(pet)
    pets << pet
  end

  def charge(ammount)
    @outstanding_balance += ammount
  end

  def pay(ammount)
    @outstanding_balance -= ammount
  end

end
