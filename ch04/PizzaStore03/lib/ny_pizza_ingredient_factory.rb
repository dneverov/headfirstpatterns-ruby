require 'pizza_ingredient_factory_module'

class NYPizzaIngredientFactory
  include PizzaIngredientFactory

  def create_dough
    ThinCrustDough.new
  end

  def create_sauce
    MarinaraSauce.new
  end

  def create_cheese
    ReggianoCheese.new
  end

  def create_veggies
    [Garlic.new, Onion.new, Mushroom.new, RedPepper.new]
  end

  def create_pepperoni
    SlicedPepperoni.new
  end

  def create_clam
    FreshClams.new
  end
end
