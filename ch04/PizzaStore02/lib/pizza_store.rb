class PizzaStore # abstract
  attr_reader :factory

  # factory: SimplePizzaFactory
  def initialize(factory)
    @factory = factory
  end

  def order_pizza(pizza_type)
    # pizza: Pizza
    pizza = create_pizza(pizza_type)

    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box

    pizza
  end

  # abstract
  def create_pizza(pizza_type)
    raise "abstract method"
  end

  # other methods...
end

# New York

class NYStylePizzaStore < PizzaStore
  def create_pizza(pizza_type)
    pizza = nil

    if pizza_type.eql?(:cheese)
      pizza = NYStyleCheesePizza.new
    elsif pizza_type.eql?(:pepperoni)
      pizza = NYStylePepperoniPizza.new
    elsif pizza_type.eql?(:clam)
      pizza = NYStyleClamPizza.new
    elsif pizza_type.eql?(:veggie)
      pizza = NYStyleVeggiePizza.new
    end
    pizza
  end
end

# Chicago

class ChicagoStylePizzaStore < PizzaStore
  def create_pizza(pizza_type)
    pizza = nil

    if pizza_type.eql?(:cheese)
      pizza = ChicagoStyleCheesePizza.new
    elsif pizza_type.eql?(:pepperoni)
      pizza = ChicagoStylePepperoniPizza.new
    elsif pizza_type.eql?(:clam)
      pizza = ChicagoStyleClamPizza.new
    elsif pizza_type.eql?(:veggie)
      pizza = ChicagoStyleVeggiePizza.new
    end
    pizza
  end
end

# California

class CaliforniaStylePizzaStore < PizzaStore
  def create_pizza(pizza_type)
    pizza = nil

    if pizza_type.eql?(:cheese)
      pizza = CaliforniaStyleCheesePizza.new
    elsif pizza_type.eql?(:pepperoni)
      pizza = CaliforniaStylePepperoniPizza.new
    elsif pizza_type.eql?(:clam)
      pizza = CaliforniaStyleClamPizza.new
    elsif pizza_type.eql?(:veggie)
      pizza = CaliforniaStyleVeggiePizza.new
    end
    pizza
  end
end
