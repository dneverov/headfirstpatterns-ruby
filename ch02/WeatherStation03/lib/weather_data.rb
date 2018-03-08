require 'observer'
require 'display_module'

class WeatherData
  include Observable

  attr_reader :temperature, :humidity, :pressure

  def initialize
  end

  def measurements_changed
    changed
    notify_observers(self)
  end

  def set_measurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    measurements_changed
  end

  def get_temperature
    temperature
  end

  def get_humidity
    humidity
  end

  def get_pressure
    pressure
  end
  # Other methods...
end
