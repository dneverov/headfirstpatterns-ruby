class Decaf < Beverage
  attr_reader :description

  def initialize
    @description = "Decaf"
  end

  def cost
    1.05
  end
end
