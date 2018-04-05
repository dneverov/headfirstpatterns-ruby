# cd /var/www/test/headfirstpatterns/ch04/PizzaStore02
# ruby -I lib pizza_app.rb

# Methods as Factory
#  + Regional Standards of Pizza
#  + Method as Factory

require 'pizza'
require 'pizza_store'

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
