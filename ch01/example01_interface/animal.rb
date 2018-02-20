# cd /var/www/test/headfirstpatterns/ch01/example01_interface
# ruby animal.rb

# Superclass (interface)

class Animal
  # abstract
  def make_sound
    # abstract
    raise "# abstract: Should be defined in the Subclass!"
  end
end

class Dog < Animal
  def make_sound
    bark
  end

  private

    def bark
      puts "-bark!"
    end
end

class Cat < Animal
  def make_sound
    meow
  end

  private

    def meow
      puts "-meow!"
    end
end

animal = Dog.new
animal.make_sound
