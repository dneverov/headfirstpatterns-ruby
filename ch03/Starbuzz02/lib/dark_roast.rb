class DarkRoast < Beverage
  attr_reader :description, :size

  def initialize(size = :standard)
    @description = "Dark Roast"
    @size = size
  end

  def cost
    if get_size == :small
      0.89
    elsif get_size == :big
      1.19
    else
      0.99
    end
  end
end
