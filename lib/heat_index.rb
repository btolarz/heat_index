require 'heat_index/calculation'

class HeatIndex

  include HeatIndex::Calculation

  WrongUnit = Class.new(StandardError)

  attr_reader :temp, :humidity, :unit

  def initialize(temp, humidity, unit = 'celsius')
    @temp     = temp
    @humidity = humidity
    @unit     = unit
    validate_unit
  end

  private

  def validate_unit
    raise WrongUnit unless ['celsius', 'fahrenheit'].include?(unit)
  end
end
