require "test_helper"

describe HeatIndex do
  it "Return right value in celsius" do
    assert_equal 29.740206061777783, HeatIndex.new(27, 80).index
  end

  it "Return right value in fahrenheit" do
    assert_equal 85.5323709112, HeatIndex.new(80.6, 80, 'fahrenheit').index
  end

  it "Know only celsius and fahrenheit units" do
    assert_equal 'celsius', HeatIndex.new(27, 80, 'celsius').unit
    assert_equal 'fahrenheit', HeatIndex.new(27, 80, 'fahrenheit').unit
    assert_raises(HeatIndex::WrongUnit) { HeatIndex.new(27, 80, 'wrong_unit') }
  end
end
