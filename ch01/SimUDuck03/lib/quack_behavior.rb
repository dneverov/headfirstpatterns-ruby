# Interface
class QuackBehavior
  # abstract
  def quack
    raise "# abstract!"
  end
end

class Quack < QuackBehavior
  def quack
    puts " --quack!"
  end
end

class Squeak < QuackBehavior
  def quack
    puts " --squeak!"
  end
end

class MuteQuack < QuackBehavior
  def quack
    puts "<< I can't quack >>"
  end
end

class RoboQuack < QuackBehavior
  def quack
    puts " --q.u.a.c.k.!"
  end
end
