require 'observer_module'

class CurrentConditionsDisplay
  include DisplayElement, Observer

  attr_reader :temperature, :humidity
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
      display
    end
  end

  def display
    puts "\nCurrent conditions: %.1fF degrees and %.1f%% humidity" % [temperature, humidity]
  end
end
