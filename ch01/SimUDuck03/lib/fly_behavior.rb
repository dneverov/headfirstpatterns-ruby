# Interface
class FlyBehavior
  # abstract
  def fly
    raise "# abstract: Should be defined in the Subclass!"
  end
end

class FlyWithWings < FlyBehavior
  def fly
    puts "I'm flying!!"
  end
end

class FlyNoWay < FlyBehavior
  def fly
    puts "<< I can't fly! >>"
  end
end

class FlyRocketPowered < FlyBehavior
  def fly
    puts "I'm flying with a rocket!"
  end
end
