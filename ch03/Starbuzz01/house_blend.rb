require 'beverage'

class HouseBlend < Beverage
  attr_reader :description

  def initialize
    @description = "House Blend"
  end

  def cost
    0.89
  end
end
