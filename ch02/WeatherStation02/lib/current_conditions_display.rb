class CurrentConditionsDisplay
  include Observer
  include DisplayElement

  attr_reader :temperature, :humidity, :pressure

  def initialize(weather_data)
    @weather_data = weather_data
    weather_data.register_observer(self)
  end

  def update(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    display
  end

  def display
    puts
    puts "Current conditions: %.1fF degrees, %.1f%% humidity and %.1f pressure" % [temperature, humidity, pressure]
  end
end
