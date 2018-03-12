# abstract
class CondimentDecorator < Beverage
  def get_description
    # abstract
    raise "# abstract: (get_description) Should be defined in subclasses!"
  end
end
