# cd /var/www/test/headfirstpatterns/ch04/PizzaStore02
# ruby -I lib pizza_app.rb

# Pattern (actually - not) Simple Factory ++
#  + Regional Standards of Pizza

require 'simple_pizza_factory'
require 'pizza_store'

# The main app
class PizzaApp
  def main
    pizza_factory = SimplePizzaFactory.new
    pizza_store = CaliforniaStylePizzaStore.new(pizza_factory)

    # PizzaTypes: :cheese, :pepperoni, :clam, :veggie
    pizza = pizza_store.order_pizza(:clam)

    puts "Here's your pizza:"
    p pizza
  end
end

pizza_app = PizzaApp.new
pizza_app.main
