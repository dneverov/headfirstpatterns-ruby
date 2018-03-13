class DarkRoast < Beverage
  attr_reader :description

  def initialize
    @description = "Dark Roast"
  end

  def cost
    0.99
  end
end
