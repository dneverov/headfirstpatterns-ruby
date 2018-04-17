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
      ingredient_factory = NYPizzaIngredientFactory.new

      if pizza_type.eql?(:cheese)
        pizza = NYStyleCheesePizza.new(ingredient_factory)
        pizza.set_name("New York Style Cheese Pizza")
      elsif pizza_type.eql?(:pepperoni)
        pizza = NYStylePepperoniPizza.new(ingredient_factory)
        pizza.set_name("New York Style Pepperoni Pizza")
      elsif pizza_type.eql?(:clam)
        pizza = NYStyleClamPizza.new(ingredient_factory)
        pizza.set_name("New York Style Clam Pizza")
      elsif pizza_type.eql?(:veggie)
        pizza = NYStyleVeggiePizza.new(ingredient_factory)
        pizza.set_name("New York Style Veggie Pizza")
      end
      pizza
    end
end

# Chicago

class ChicagoPizzaStore < PizzaStore
  protected
    def create_pizza(pizza_type)
      pizza = nil
      ingredient_factory = ChicagoPizzaIngredientFactory.new

      if pizza_type.eql?(:cheese)
        pizza = ChicagoStyleCheesePizza.new(ingredient_factory)
        pizza.set_name("Chicago Style Cheese Pizza")
      elsif pizza_type.eql?(:pepperoni)
        pizza = ChicagoStylePepperoniPizza.new(ingredient_factory)
        pizza.set_name("Chicago Style Pepperoni Pizza")
      elsif pizza_type.eql?(:clam)
        pizza = ChicagoStyleClamPizza.new(ingredient_factory)
        pizza.set_name("Chicago Style Clam Pizza")
      elsif pizza_type.eql?(:veggie)
        pizza = ChicagoStyleVeggiePizza.new(ingredient_factory)
        pizza.set_name("Chicago Style Veggie Pizza")
      end
      pizza.set_slice_method("square")
      pizza
    end
end

# California

class CaliforniaPizzaStore < PizzaStore
  protected
    # TODO: Complete it ourself =)
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
