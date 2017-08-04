require "test_helper"

describe HeatIndex::UnitConverter do
  let(:converter) do
    object = Object.new
    object.extend(HeatIndex::UnitConverter)
  end

  let(:temp_in_celsius) { 25.0 }
  let(:temp_in_fahrenheit) { 77.0 }

  it "corretly convert celsius to fahrenheit" do
    assert_equal temp_in_fahrenheit, converter.celsius2fahrenheit(temp_in_celsius)
  end

  it "corretly convert fahrenheit to celsius" do
    assert_equal temp_in_celsius, converter.fahrenheit2celsius(temp_in_fahrenheit)
  end
end