require 'pry'
class Pet
  attr_reader :name, :type, :age
  def initialize(*info)
    @name = info[0].values[0]
    @type = info[0].values[1]
    @age = info[0].values[2]
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
