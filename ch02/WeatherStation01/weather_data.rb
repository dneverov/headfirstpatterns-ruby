# The very first iteration
# ..it means == Wrong

# <cite>Наша задача — создать приложение. которое использует данные
# объекта <b>WeatherData</b> для обновления:
# текущих условий, статистики и прогноза погоды

class WeatherData

  # pre-defined methods

  def get_temperature
    # The newest temperature
  end

  def get_humidity
    # The newest humidity
  end

  def get_pressure
    # The newest pressure
  end
  # // pre-defined methods

  def measurements_changed
    temp = get_temperature
    humidity = get_humidity
    pressure = get_pressure

    current_conditions_display.update(temp, humidity, pressure)
    statistics_display.update(temp, humidity, pressure)
    forecast_display.update(temp, humidity, pressure)
  end
end
