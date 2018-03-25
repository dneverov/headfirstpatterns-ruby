# cd /var/www/test/headfirstpatterns/ch04/PizzaStore01
# ruby -I lib pizza_app.rb

# Pattern (actually - not) Simple Factory

require 'simple_pizza_factory'
require 'pizza_store'

# The main app
class PizzaApp
  def main
    pizza_factory = SimplePizzaFactory.new
    pizza_store = PizzaStore.new(pizza_factory)

    # PizzaTypes: :cheese, :pepperoni, :clam, :veggie
    pizza = pizza_store.order_pizza(:pepperoni)

    puts "Here's your pizza:"
    p pizza
  end
end

pizza_app = PizzaApp.new
pizza_app.main
