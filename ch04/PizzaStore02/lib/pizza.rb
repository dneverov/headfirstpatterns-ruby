# Pizza Classes

# Super Class
class Pizza
  def prepare
    puts "  Preparing a `#{self.class}`..."
  end

  def bake
    puts "  Baking pizza..."
  end

  def cut
    puts "  Cutting pizza..."
  end

  def box
    puts "  Boxing pizza..."
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

# == NY ==

class NYStyleCheesePizza < CheesePizza
end

class NYStyleVeggiePizza < VeggiePizza
end

class NYStyleClamPizza < ClamPizza
end

class NYStylePepperoniPizza < PepperoniPizza
end

# == Chicago ==

class ChicagoStyleCheesePizza < CheesePizza
end

class ChicagoStyleVeggiePizza < VeggiePizza
end

class ChicagoStyleClamPizza < ClamPizza
end

class ChicagoStylePepperoniPizza < PepperoniPizza
end

# == California ==

class CaliforniaStyleCheesePizza < CheesePizza
end

class CaliforniaStyleVeggiePizza < VeggiePizza
end

class CaliforniaStyleClamPizza < ClamPizza
end

class CaliforniaStylePepperoniPizza < PepperoniPizza
end
