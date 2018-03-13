# abstract
class Beverage
  @description = "Unknown bewerage"

  def get_description
    @description
  end

  def cost
    # abstract
    raise "# abstract: (cost) Should be defined in subclasses!"
  end
end
