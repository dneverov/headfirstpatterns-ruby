# cd /var/www/test/headfirstpatterns/ch03/Starbuzz01
# ruby -I lib starbuzz_coffee.rb

Beverages = ['beverage', 'espresso', 'dark_roast', 'house_blend', 'decaf']
Condiments = ['condiment_decorator', 'mocha_decorator', 'whip_decorator', 'soy_decorator']

Beverages.each do |coffee|
  require coffee
end
Condiments.each do |decorator|
  require decorator
end

class StarbuzzCoffee
  def main
    beverage = Espresso.new
    puts_beverage(beverage)

    beverage2 = DarkRoast.new
    # Decoration
    #   - Кофе темной обжарки (DarkRoast)
    #     + с двойным шоколадом (Mocha) и взбитыми сливками (Whip)
    beverage2 = Mocha.new(beverage2)
    beverage2 = Mocha.new(beverage2)
    beverage2 = Whip.new(beverage2)
    puts_beverage(beverage2)

    beverage3 = HouseBlend.new
    # Decoration
    beverage3 = Soy.new(beverage3)
    beverage3 = Mocha.new(beverage3)
    beverage3 = Whip.new(beverage3)
    puts_beverage(beverage3)
  end

  private

    def puts_beverage(beverage)
      puts "\n#{beverage.get_description} $#{beverage.cost}"
    end
end

# Run
starbuzz_coffee = StarbuzzCoffee.new
starbuzz_coffee.main
