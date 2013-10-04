class Chapter < ActiveRecord::Base

	include Averageable
 
    belongs_to :report
    belongs_to :indicator
    has_many   :user_ratings, as: :rateable
  
end
