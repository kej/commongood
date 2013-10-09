require 'test_helper'

class IndicatorTest < ActiveSupport::TestCase

  test "indicator must have existing matrix" do indicator = Indicator.new
  	indicator.short = "xy"
    assert indicator.invalid?
    matrix = Matrix.new(title: matrices(:m40).title)
    indicator.matrix = matrix
    assert indicator.invalid?
  end

  test "indicator must have existing short attribute" do indicator = Indicator.new
    indicator.matrix = matrices(:m40)
    assert indicator.invalid?
  end


end
