# cd /var/www/test/headfirstpatterns/ch04/PizzaStore02
# ruby -I lib pizza_app.rb

# Methods as Factory
#  + Regional Standards of Pizza
#  + Method as Factory

require 'pizza'
#require 'simple_pizza_factory'
require 'pizza_store'

# The main app
class PizzaApp
  def main
    #pizza_factory = SimplePizzaFactory.new
    pizza_store = ChicagoStylePizzaStore.new#(pizza_factory)

    # PizzaTypes: :cheese, :pepperoni, :clam, :veggie
    pizza = pizza_store.order_pizza(:veggie)

    puts "Here's your pizza:"
    p pizza
  end
end

pizza_app = PizzaApp.new
pizza_app.main
