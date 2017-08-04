class HeatIndex
  module UnitConverter

    def celsius2fahrenheit(c)
      (c * 9.0 / 5.0) + 32
    end

    def fahrenheit2celsius(f)
      (f - 32) * 5.0 / 9.0
    end

  end
end