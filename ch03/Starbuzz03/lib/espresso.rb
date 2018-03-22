class Espresso < Beverage
  attr_reader :description, :size

  def initialize(size = :standard)
    @description = "Espresso"
    @size = size
  end

  def cost
    if get_size == :small
      1.66
    elsif get_size == :big
      2.19
    else
      1.99
    end
  end
end
