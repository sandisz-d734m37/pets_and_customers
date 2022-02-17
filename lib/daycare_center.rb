class DaycareCenter
  attr_reader :name, :customers, :customers_pets, :unfed_pets
  def initialize(name)
    @name = name
    @customers = []
    @customers_pets = []
    @unfed_pets = []
  end

  def add_customer(custy)
    customers << custy
  end

  def pets(custy)
    @customers_pets = []
    custy.pets.each do |pet|
      @customers_pets << pet
    end
  end

  def customer_id(id_num)
    @customers.each do |custy|
      if custy.id == id_num
        return custy.name
      end
    end
  end

  def check_unfed
    @unfed_pets = []
    @customers.each do |custy|
      custy.pets.each do |pet|
        if pet.fed? == false
          @unfed_pets << pet
        end
      end
    end
  end

end
