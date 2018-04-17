# cd /var/www/test/headfirstpatterns/ch04/PizzaStore03
# ruby -I lib pizza_app.rb

# Methods as Factory (**Factory Method**)
#  + Regional Standards of Pizza
#  + Method as Factory
# Ingredient Factories (**Abstract Factory**)

require 'pizza'
require 'ingredients'
require 'pizza_store'
require 'ny_pizza_ingredient_factory'
require 'chicago_pizza_ingredient_factory'

# The main app
class PizzaTestDrive
  def main
    ny_store = NYPizzaStore.new
    chicago_store = ChicagoPizzaStore.new

    # PizzaTypes: :cheese, :pepperoni, :clam, :veggie
    # NY
    pizza = ny_store.order_pizza(:cheese)
    puts "Ethan ordered a `#{pizza.get_name}` \n\n"

    # Chicago
    pizza = chicago_store.order_pizza(:cheese)
    puts "Joel ordered a `#{pizza.get_name}` \n\n"
  end
end

pizza_app = PizzaTestDrive.new
pizza_app.main
