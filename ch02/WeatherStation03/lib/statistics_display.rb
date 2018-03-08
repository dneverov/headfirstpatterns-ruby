class StatisticsDisplay
  include Observable, DisplayElement

  attr_reader :num_readings, :temp_sum, :max_temp, :min_temp

  def initialize(observable)
    @max_temp = 0.0
  	@min_temp = 200
  	@temp_sum = 0.0
    @num_readings = 0

    @observable = observable
    observable.add_observer(self)
  end

  def update(obs, *arg)
    if obs.instance_of? WeatherData
      weather_data = obs

      temp = weather_data.get_temperature
  		@temp_sum += temp
  		@num_readings += 1

      @max_temp = temp if temp > max_temp
      @min_temp = temp if temp < min_temp

  		display
    end
  end

  def display
    puts "Avg/Max/Min temperature = %.1f/%.1f/%.1f" % [temp_sum/num_readings, max_temp, min_temp]
	end
end
