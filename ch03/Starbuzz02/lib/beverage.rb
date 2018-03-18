# abstract
class Beverage
  Sizes = [:small, :standard, :big]
  @description = "Unknown bewerage"
  @size = "Unknown Size"

  def get_description
    @description
  end

  def set_size(size = Sizes[1])
    @size = size
  end

  def get_size
    size
  end

  def cost
    # abstract
    raise "# abstract: (cost) Should be defined in subclasses!"
  end
end
