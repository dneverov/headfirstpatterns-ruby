# cd /var/www/test/headfirstpatterns/ch01/SimUDuck03
# ruby -I lib duck_app.rb

#
#  Pattern: Strategy
#

require 'duck'

# Test App
def ducks_parade(ducks)
  ducks.each do |duck|
    puts "\n== #{duck.class} =="
    duck.display
    duck.swim
    duck.perform_quack
    duck.perform_fly
  end
end


mallard_duck = MallardDuck.new
#mallard_duck.quack_behavior = Squeak.new
redhead_duck = RedheadDuck.new
rubber_duck = RubberDuck.new
decoy_duck = DecoyDuck.new

ducks = [mallard_duck, redhead_duck, rubber_duck, decoy_duck]

# Show the Ducks!
ducks_parade(ducks)
