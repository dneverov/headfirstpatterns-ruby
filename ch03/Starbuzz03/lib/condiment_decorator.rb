# abstract
class CondimentDecorator < SimpleDelegator
  def initialize(beverage)
    @beverage = beverage
    super
  end
end
