class Indicator < ActiveRecord::Base
  belongs_to :matrix
  has_many   :indicator_values
  has_many   :values, through: :indicator_values

end
