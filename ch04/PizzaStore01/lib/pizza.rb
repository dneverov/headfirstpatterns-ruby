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
