class Espresso < Beverage
  attr_reader :description

  def initialize
    @description = "Espresso"
  end

  def cost
    1.99
  end
end
