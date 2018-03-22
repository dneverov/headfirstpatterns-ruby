class Decaf < Beverage
  attr_reader :description, :size

  def initialize(size = :standard)
    @description = "Decaf"
    @size = size
  end

  def cost
    if get_size == :small
      0.95
    elsif get_size == :big
      1.15
    else
      1.05
    end
  end
end
