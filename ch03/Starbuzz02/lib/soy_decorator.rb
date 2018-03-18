class Soy < CondimentDecorator
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def get_size
    beverage.get_size
  end

  def get_description
    beverage.get_description + ", Soy"
  end

  def cost
    default_cost = beverage.cost
    if get_size == :small
      0.1 + default_cost
    elsif get_size == :big
      0.2 + default_cost
    else
      0.15 + default_cost
    end
  end
end
