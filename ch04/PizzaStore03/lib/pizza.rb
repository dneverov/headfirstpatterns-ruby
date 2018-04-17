# Pizza (Product) Classes

# Super Class
class Pizza
  attr_reader :name, :dough, :sauce, :cheese, :pepperoni, :clam

  def veggies
    @veggies = @veggies || []
  end

  def toppings
    @toppings = @toppings || []
  end

  def bake
    puts "Bake `#{self.class}` for 25 minutes at 350"
  end

  def cut
    puts "Cutting the pizza into diagonal slices"
  end

  def box
    puts "Place pizza in official PizzaStore box"
  end

  def set_name(name)
    @name = name
  end

  def get_name
    name
  end

  def to_string
    # Code of Pizza's description
  end

  protected
    # abstract
    def prepare
      raise "abstract method"
    end
end

# Sub Classes

class CheesePizza < Pizza
  attr_reader :ingredient_factory

  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
  end

  def prepare
    puts "Preparing #{name}"
    dough = ingredient_factory.create_dough
    sauce = ingredient_factory.create_sauce
    cheese = ingredient_factory.create_cheese
  end
end

class VeggiePizza < Pizza
end

class ClamPizza < Pizza
  attr_reader :ingredient_factory

  def initialize(ingredient_factory)
    @ingredient_factory = ingredient_factory
  end

  def prepare
    puts "Preparing #{name}"
    dough = ingredient_factory.create_dough
    sauce = ingredient_factory.create_sauce
    cheese = ingredient_factory.create_cheese
    clam = ingredient_factory.create_clam
  end
end

class PepperoniPizza < Pizza
end

# == Concrete Products ==

# NY

class NYStyleCheesePizza < CheesePizza
end

class NYStyleVeggiePizza < VeggiePizza
end

class NYStyleClamPizza < ClamPizza
end

class NYStylePepperoniPizza < PepperoniPizza
end

# Chicago

class ChicagoStyleCheesePizza < CheesePizza
end

class ChicagoStyleVeggiePizza < VeggiePizza
end

class ChicagoStyleClamPizza < ClamPizza
end

class ChicagoStylePepperoniPizza < PepperoniPizza
end

# California

class CaliforniaStyleCheesePizza < CheesePizza
end

class CaliforniaStyleVeggiePizza < VeggiePizza
end

class CaliforniaStyleClamPizza < ClamPizza
end

class CaliforniaStylePepperoniPizza < PepperoniPizza
end
