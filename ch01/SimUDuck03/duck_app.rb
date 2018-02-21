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
redhead_duck = RedheadDuck.new
rubber_duck = RubberDuck.new
decoy_duck = DecoyDuck.new

ducks = [mallard_duck, redhead_duck, rubber_duck, decoy_duck]

# Show the Ducks!
ducks_parade(ducks)

puts
# A new Model Duck
model_duck = ModelDuck.new
model_duck.display
model_duck.perform_quack
model_duck.perform_fly

# Let's upgrade the model_duck!
puts "..:.:.:. pit stop .:.:.:.."
model_duck.set_quack_behavior(RoboQuack.new)
model_duck.set_fly_behavior(FlyRocketPowered.new)
model_duck.perform_quack
model_duck.perform_fly
