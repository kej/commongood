module Averageable
	extend ActiveSupport::Concern

	def number_of_ratings
		user_ratings.length
	end

	def mean_calculated_ratio
		nr_user_ratings = number_of_ratings
		mean_ratio = 0.25
		if nr_user_ratings > 0
			mean_ratio = user_ratings.collect{|ur| ur.calculated_ratio}.sum / nr_user_ratings
		end
		return mean_ratio
	end

	# can't be coerced to string???
	def ratings_summary
		mean_calculated_ratio 
	end


end