# cd /var/www/test/headfirstpatterns/ch01/SimUDuck02
# ruby -I lib duck.rb

require 'duck'
require 'flyable'
require 'quackable'

class MallardDuck < Duck
  include Flyable
  include Quackable

  def display
    puts ":MallardDuck:".downcase
  end
end

class RedheadDuck < Duck
  include Flyable
  include Quackable

  def display
    puts ":RedheadDuck:".downcase
  end
end

# Rubber Duck
class RubberDuck < Duck
  include Quackable

  # Should Not fly

  def quack
    puts "squeak!"
  end

  def display
    puts ":RubberDuck:".downcase
  end
end

# Wooden Duck
class DecoyDuck < Duck
  # Should Not quack
  # Should Not fly

  def display
    puts ":DecoyDuck:".downcase
  end
end

puts "== MallardDuck =="
mallard_duck = MallardDuck.new
mallard_duck.quack
mallard_duck.swim
mallard_duck.display
mallard_duck.fly

puts "== RedheadDuck =="
redhead_duck = RedheadDuck.new
redhead_duck.quack
redhead_duck.swim
redhead_duck.display
redhead_duck.fly

# Rubber Duck
#  - should not fly!
puts "== RubberDuck =="
rubber_duck = RubberDuck.new
rubber_duck.quack
rubber_duck.swim
rubber_duck.display
#rubber_duck.fly

# Wooden Duck
#   - should not fly!
#   - should not quack!
puts "== DecoyDuck =="
decoy_duck = DecoyDuck.new
#decoy_duck.quack
decoy_duck.swim
decoy_duck.display
#decoy_duck.fly

# http://qaru.site/questions/142657/abstract-method-in-ruby
# See answer #2 (13v, Boris Stitnicky)
