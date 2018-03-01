# == Modules

module Subject
  def initialize
    @observers = []
  end

  def register_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    #
  end
end


module Observer
  # TODO: Could be changed (+ wind speed, etc.) => Incapsulation. Think about it :-)
  def update(temp, humidity, pressure)
    #
  end
end


module DisplayElement
  def display
    #
  end
end
