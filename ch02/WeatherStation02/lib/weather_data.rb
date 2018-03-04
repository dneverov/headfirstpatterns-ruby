require 'interfaces'

class WeatherData
  include Subject

  attr_reader :temperature, :humidity, :pressure

  def initialize
    #@observers = []
    super
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(temperature, humidity, pressure)
    end
  end

  def measurements_changed
    notify_observers
  end

  def set_measurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    measurements_changed
  end

  # Other methods...
end
