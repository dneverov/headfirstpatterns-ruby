class StatisticsDisplay
  include Observer, DisplayElement

  attr_reader :num_readings, :temp_sum, :max_temp, :min_temp

  def initialize(weather_data)
    @max_temp = 0.0
  	@min_temp = 200
  	@temp_sum = 0.0
    @num_readings = 0

    @weather_data = weather_data
    weather_data.register_observer(self)
  end

  def update(temperature, humidity, pressure)
    temp = temperature
		@temp_sum += temp
		@num_readings += 1

		if (temp > max_temp)
			@max_temp = temp
		end

		if (temp < min_temp)
			@min_temp = temp
		end

		display
  end

  def display
    puts "Avg/Max/Min temperature = %.1f/%.1f/%.1f" % [temp_sum/num_readings, max_temp, min_temp]
	end
end
