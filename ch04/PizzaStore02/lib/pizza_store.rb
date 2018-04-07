class PizzaStore # abstract
  # Common method
  def order_pizza(pizza_type)
    # pizza: Pizza
    pizza = create_pizza(pizza_type)

    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box

    pizza
  end

  protected

    # abstract
    def create_pizza(pizza_type)
      raise "abstract method"
    end

  # other methods...
end

# == Concrete Classes-Creators ==

# New York

class NYPizzaStore < PizzaStore
  protected
    # Method as a Factory
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

class ChicagoPizzaStore < PizzaStore
  protected
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

class CaliforniaPizzaStore < PizzaStore
  protected
    # Method as a Factory
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
