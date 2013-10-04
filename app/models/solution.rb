class Solution < ActiveRecord::Base

	include Averageable

	belongs_to :chapter
	has_one :indicator, through: :chapter
	has_many   :user_ratings, as: :rateable

end
