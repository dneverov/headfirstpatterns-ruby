class ForecastDisplay
  include Observer, DisplayElement

  attr_reader :current_pressure, :last_pressure

  def initialize(weather_data)
    @current_pressure = 29.92

    @weather_data = weather_data
    @weather_data.register_observer(self)
  end

  def update(temperature, humidity, pressure)
    @last_pressure = current_pressure
		@current_pressure = pressure
		display
  end

  def display
    print "Forecast: "
    if current_pressure > last_pressure
      puts "Improving weather on the way!"
    elsif current_pressure == last_pressure
      puts "More of the same"
    elsif current_pressure < last_pressure
      puts "Watch out for cooler, rainy weather"
    end
  end
end
