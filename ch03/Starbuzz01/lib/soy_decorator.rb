class Soy < CondimentDecorator
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def get_description
    beverage.get_description + ", Soy"
  end

  def cost
    0.15 + beverage.cost
  end
end
