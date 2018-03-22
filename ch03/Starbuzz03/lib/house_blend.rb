class HouseBlend < Beverage
  attr_reader :description, :size

  def initialize(size = :standard)
    @description = "House Blend"
    @size = size
  end

  def cost
    if get_size == :small
      0.69
    elsif get_size == :big
      0.99
    else
      0.89
    end
  end
end
