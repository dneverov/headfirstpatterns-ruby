# Ingredients for Pizza

# Dough
module Dough
end

class ThinCrustDough
  include Dough
end

class ThickCrustDough
  include Dough
end


# Sauce
module Sauce
end

class MarinaraSauce
  include Sauce
end

class PlumTomatoSauce
  include Sauce
end


# Cheese
module Cheese
end

class ReggianoCheese
  include Cheese
end

class MozzarellaCheese
  include Cheese
end

# ...

# Clam
module Clam
end

class FreshClams
  include Clam
end

class FrozenClams
  include Clam
end
