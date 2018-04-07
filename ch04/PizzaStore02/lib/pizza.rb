# Pizza (Product) Classes

# Super Class
class Pizza
  attr_reader :name, :dough, :sauce

  def toppings
    @toppings = @toppings || []
  end

  def prepare
    puts "Preparing `#{ name }`"
    puts "Tossing dough..."
    puts "Adding sauce... `#{ sauce }`"
    puts "Adding toppings:"
    toppings.each do |topping|
      puts "    #{topping}"
    end
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

  def get_name
    name
  end
end

# Sub Classes

class CheesePizza < Pizza
end

class VeggiePizza < Pizza
end

class ClamPizza < Pizza
end

class PepperoniPizza < Pizza
end

# == Concrete Products ==

# NY

class NYStyleCheesePizza < CheesePizza
  def initialize
    @name = "NY Style Sauce and Cheese Pizza"
    @dough = "Thin Crust Dough"
    @sauce = "Marinara Sauce"

    toppings << "Grated Reggiano Cheese"
    toppings << "Cheese #2"
  end
end

class NYStyleVeggiePizza < VeggiePizza
end

class NYStyleClamPizza < ClamPizza
end

class NYStylePepperoniPizza < PepperoniPizza
end

# Chicago

class ChicagoStyleCheesePizza < CheesePizza
  def initialize
    @name = "Chicago Style Deep Dish Cheese Pizza"
    @dough = "Extra Thick Crust Dough"
    @sauce = "Plum Tomato Sauce"

    toppings << "Shredded Mozzarella Cheese"
  end

  def cut
    puts "Cutting the pizza into square slices"
  end
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
