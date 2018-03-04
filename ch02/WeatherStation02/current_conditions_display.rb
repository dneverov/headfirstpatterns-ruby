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
    puts "Current conditions: #{temperature}F degrees, #{humidity}% humidity and #{pressure} pressure"
  end
end
