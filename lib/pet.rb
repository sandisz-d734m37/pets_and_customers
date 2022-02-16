require 'pry'
class Pet
  attr_reader :name, :type, :age
  def initialize(*args)
    @name = args[0].values[0]
    @type = args[0].values[1]
    @age = args[0].values[2]
    @fed = false
  end

  def fed?
    @fed
  end

  def feed
    if @fed == false
      @fed = true
    end
  end

end
