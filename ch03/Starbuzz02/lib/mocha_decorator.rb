class Mocha < CondimentDecorator
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def get_size
    beverage.get_size
  end
  
  def get_description
    #beverage.description + ", Mocha"
    "#{beverage.get_description}, Mocha"
  end

  def cost
    default_cost = beverage.cost
    if get_size == :small
      0.15 + default_cost
    elsif get_size == :big
      0.25 + default_cost
    else
      0.20 + beverage.cost
    end
  end
end
