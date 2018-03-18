# cd /var/www/test/headfirstpatterns/ch03/Starbuzz02
# ruby -I lib starbuzz_coffee.rb

Beverages = ['beverage', 'espresso', 'dark_roast', 'house_blend', 'decaf']
Condiments = ['condiment_decorator', 'mocha_decorator', 'whip_decorator', 'soy_decorator']

(Beverages + Condiments).each do |lib_file|
  require lib_file
end

class StarbuzzCoffee
  def main
    beverage = Espresso.new :big
    puts_beverage(beverage)

    beverage2 = DarkRoast.new
    beverage2.set_size :small
    # Decoration
    #   - Кофе темной обжарки (DarkRoast)
    #     + с двойным шоколадом (Mocha) и взбитыми сливками (Whip)
    beverage2 = Mocha.new(beverage2)
    beverage2 = Mocha.new(beverage2)
    beverage2 = Whip.new(beverage2)
    puts_beverage(beverage2)

    # Decoration((Beverage))
    beverage3 = Whip.new( Mocha.new( Soy.new(HouseBlend.new) ))
    puts_beverage(beverage3)
  end

  private

    def puts_beverage(beverage)
      puts "#{beverage.get_description} $#{format("%0.2f", beverage.cost)}"
    end
end

# Run
starbuzz_coffee = StarbuzzCoffee.new
starbuzz_coffee.main
