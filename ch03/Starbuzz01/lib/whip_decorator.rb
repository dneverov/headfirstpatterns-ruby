class Whip < CondimentDecorator
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def get_description
    "#{beverage.get_description}, Whip"
  end

  def cost
    0.10 + beverage.cost
  end
end
