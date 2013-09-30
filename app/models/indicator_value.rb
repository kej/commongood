class IndicatorValue < ActiveRecord::Base
  belongs_to :indicator
  belongs_to :value
end
