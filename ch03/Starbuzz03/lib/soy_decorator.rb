class Soy < CondimentDecorator
  attr_reader :beverage

  def get_size
    beverage.get_size
  end

  def get_description
    "#{beverage.get_description}, Soy"
  end

  def cost
    beverage_cost = beverage.cost
    if get_size == :small
      0.1 + beverage_cost
    elsif get_size == :big
      0.2 + beverage_cost
    else
      0.15 + beverage_cost
    end
  end
end
