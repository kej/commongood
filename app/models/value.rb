class Value < ActiveRecord::Base
	has_many :indicator_values
	has_many :indicators, through: :indicator_values

end
