class Vet
  attr_reader :name, :customers, :pets
  def initialize(name)
    @name = name
    @customers = []
    @pets = []
  end

  def custy_acquire(custy)
    customers << custy
  end

  def custy_pets(custy)
    @pets = []
    custy.pets.each do |pet|
      @pets << pet
    end
  end

  def all_pets
    @pets = []
    @customers.each do |custy|
      custy.pets.each do |pet|
        @pets << pet
      end
    end
    (@pets.sort_by {|pet| pet.age}).reverse
  end

  def count_pets(custy)
    custy.pets.length
  end



end
