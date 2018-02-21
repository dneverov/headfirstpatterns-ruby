require 'quack_behavior'
require 'fly_behavior'

class Duck

  attr_reader :quack_behavior, :fly_behavior

  # interfaces: QuackBehavior, FlyBehavior
  def initialize(quack_behavior, fly_behavior)
    @quack_behavior = quack_behavior
    @fly_behavior = fly_behavior
  end

  def perform_quack
    quack_behavior.quack
  end

  def perform_fly
    fly_behavior.fly
  end

  # Dynamic behavior change
  def set_quack_behavior(new_quack_behavior)
    @quack_behavior = new_quack_behavior
  end

  # Dynamic behavior change
  def set_fly_behavior(new_fly_behavior)
    @fly_behavior = new_fly_behavior
  end

  def swim
    puts "All ducks float, even decoys!"
  end

  # abstract
  def display
    raise "# abstract: Should be defined in the Subclass!"
  end
end

# -- Mallard Duck --
class MallardDuck < Duck
  def initialize
    @quack_behavior = Quack.new
    @fly_behavior = FlyWithWings.new
    #super quack_behavior, fly_behavior
  end

  def display
    puts ":MallardDuck:".downcase
  end
end

# -- Redhead Duck --
class RedheadDuck < Duck
  def initialize
    @quack_behavior = Quack.new
    @fly_behavior = FlyWithWings.new
  end

  def display
    puts ":RedheadDuck:".downcase
  end
end

# -- Rubber Duck --
class RubberDuck < Duck
  def initialize
    @quack_behavior = Squeak.new
    @fly_behavior = FlyNoWay.new
  end

  def display
    puts ":RubberDuck:".downcase
  end
end

# -- Wooden Duck --
# Should Not quack
# Should Not fly
class DecoyDuck < Duck
  def initialize
    @quack_behavior = MuteQuack.new
    @fly_behavior = FlyNoWay.new
  end

  def display
    puts ":DecoyDuck:".downcase
  end
end

# -- Model Duck -- a "Crash Dummy" :-)
# Should Not fly
class ModelDuck < Duck
  def initialize
    @quack_behavior = Quack.new
    @fly_behavior = FlyNoWay.new
  end

  def display
    puts ":ModelDuck:".downcase
  end
end
