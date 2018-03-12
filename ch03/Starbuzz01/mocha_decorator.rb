require 'condiment_decorator'

class Mocha < CondimentDecorator
  attr_reader :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def get_description
    #beverage.description + ", Mocha"
    "#{beverage.get_description}, Mocha"
  end

  def cost
    0.20 + beverage.cost
  end
end
