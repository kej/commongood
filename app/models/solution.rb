class Solution < ActiveRecord::Base

	include Averageable

	belongs_to :chapter
	has_one    :indicator, through: :chapter
	has_one    :report, through: :chapter
	has_many   :chapter_ratings, through: :chapter, source: :user_ratings
	has_many   :user_ratings, as: :rateable

	def summary
		description.truncate(40, :omission => '')
	end

	def all_ratings
		user_ratings + chapter_ratings
	end

	# gives preference to the direct ratings of solutions
	def all_ratings_calculated_ratio
		if number_of_ratings > 0
			ratio = mean_calculated_ratio
		else
			ratio = chapter.mean_calculated_ratio
		end
		return ratio
	end


end
