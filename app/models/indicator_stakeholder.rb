class IndicatorStakeholder < ActiveRecord::Base
  belongs_to :indicator
  belongs_to :stakeholder
end
