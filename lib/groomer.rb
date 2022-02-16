class Groomer
  attr_reader :name, :customers_with_dues
  attr_accessor :customers
  def initialize(name)
    @name = name
    @customers = []
    @customers_with_dues = []
  end

  def custy_acquire(custy)
    @customers << custy
  end

  def check_balances
    @customers.each_with_index do |custy, index|
      unless @customers_with_dues.include?(custy) || custy.outstanding_balance == 0
        @customers_with_dues << custy
      end
      if custy.outstanding_balance == 0
        @customers_with_dues.delete_at(index)
      end
    end
    @customers_with_dues
  end

  def count_pets(type)
    pet_count = 0
    @customers.each do |custy|
      custy.pets.each do |pet|
        if pet.type == type
          pet_count += 1
        end
      end
    end
    pet_count
  end


end
