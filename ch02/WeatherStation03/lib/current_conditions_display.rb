#require 'observer'

class CurrentConditionsDisplay
  include DisplayElement

  attr_reader :temperature, :humidity# ,:pressure
  attr_reader :observable

  def initialize(observable)
    @observable = observable
    observable.add_observer(self)
  end

  def update(obs, *arg)
    if obs.instance_of? WeatherData
      weather_data = obs
      @temperature = weather_data.get_temperature
      @humidity = weather_data.get_humidity
      #@pressure = pressure
      display
    end
  end

  def display
    puts
    #puts "Current conditions: %.1fF degrees, %.1f%% humidity and %.1f pressure" % [temperature, humidity, pressure]
    puts "Current conditions: %.1fF degrees and %.1f%% humidity" % [temperature, humidity]
  end
end
