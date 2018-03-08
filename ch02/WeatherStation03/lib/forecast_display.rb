class ForecastDisplay
  include Observable, DisplayElement

  attr_reader :current_pressure, :last_pressure

  def initialize(observable)
    @current_pressure = 29.92
    @observable = observable
    observable.add_observer(self)
  end

  def update(obs, *arg)
    if obs.instance_of? WeatherData
      weather_data = obs
      @last_pressure = current_pressure
      @current_pressure = weather_data.get_pressure
      display
    end
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
