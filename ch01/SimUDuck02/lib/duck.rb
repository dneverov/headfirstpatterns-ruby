class Duck
  def swim
    puts "swimming..."
  end

  # abstract
  def display
    raise "# abstract: Should be defined in the Subclass!"
  end
end
