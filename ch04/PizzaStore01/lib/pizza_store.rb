class PizzaStore
  attr_reader :factory
  
  # factory: SimplePizzaFactory
  def initialize(factory)
    @factory = factory
  end

  def order_pizza(pizza_type)
    # pizza: Pizza
    pizza = factory.create_pizza(pizza_type)

    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end

  # other methods...
end
