require 'heat_index/unit_converter'

class HeatIndex
  module Calculation
    include UnitConverter

    def index
      @index ||= celsius? ? celsius_index : fahrenheit_index
    end

    private

    # Formula reference http://www.srh.noaa.gov/images/ffc/pdf/ta_htindx.PDF
    def calculate_index
      -42.379 + 2.04901523*fahrenheit_temp +
      10.14333127*humidity -
      0.22475541*fahrenheit_temp*humidity -
      6.83783*10**-3*fahrenheit_temp**2 -
      5.481717*10**-2*humidity**2 +
      1.22874*10**-3*fahrenheit_temp**2*humidity +
      8.5282*10**-4*fahrenheit_temp*humidity**2 -
      1.99*10**-6*fahrenheit_temp**2*humidity**2
    end

    def fahrenheit_index
      calculate_index
    end

    def celsius_index
      fahrenheit2celsius(calculate_index)
    end

    def fahrenheit_temp
      @fahrenheit_temp ||= celsius? ? celsius2fahrenheit(temp) : temp
    end

    def celsius?
      unit == 'celsius'
    end
  end
end