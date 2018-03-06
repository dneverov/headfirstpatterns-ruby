# cd /your/project/dir
# ruby -I lib weather_station.rb

require 'weather_data'
require 'current_conditions_display'
require 'statistics_display'
require 'forecast_display'
require 'heat_index_display'

class WeatherStation
  def main
    weather_data = WeatherData.new()

    current_display = CurrentConditionsDisplay.new(weather_data)
    statistics_display = StatisticsDisplay.new(weather_data)
    forecast_display = ForecastDisplay.new(weather_data)
    heat_index_display = HeatIndexDisplay.new(weather_data)
    #
    weather_data.set_measurements(80, 65, 30.4)
    weather_data.set_measurements(82, 70, 29.2)
    weather_data.set_measurements(78, 90, 29.2)
  end
end

weather_station = WeatherStation.new
weather_station.main
