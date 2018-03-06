class HeatIndexDisplay
  include Observer, DisplayElement

  attr_reader :heat_index

  def initialize(weather_data)
    @weather_data = weather_data
    @weather_data.register_observer(self)
  end

  def update(temperature, humidity, pressure)
    @heat_index = compute_heat_index(temperature, humidity)
		display
  end

  def display
    puts "Heat index is %.5f" % [heat_index]
  end

  private

    def compute_heat_index(t, rh)
      ((16.923 + (0.185212 * t) + (5.37941 * rh) - (0.100254 * t * rh) +
          (0.00941695 * (t * t)) + (0.00728898 * (rh * rh)) +
          (0.000345372 * (t * t * rh)) - (0.000814971 * (t * rh * rh)) +
          (0.0000102102 * (t * t * rh * rh)) - (0.000038646 * (t * t * t)) + (0.0000291583 *
          (rh * rh * rh)) + (0.00000142721 * (t * t * t * rh)) +
          (0.000000197483 * (t * rh * rh * rh)) - (0.0000000218429 * (t * t * t * rh * rh)) +
          0.000000000843296 * (t * t * rh * rh * rh)) -
          (0.0000000000481975 * (t * t * t * rh * rh * rh)))
    end
end
