class Groomer
  attr_reader :name
  attr_accessor :customers
  def initialize(name)
    @name = name
    @customers = []
  end

  def custy_acquire(custy)
    customers << custy
  end

end
