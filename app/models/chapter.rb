class Chapter < ActiveRecord::Base

	include Averageable

	validates  :report_id, :indicator_id, presence: true
 
    belongs_to :report
    belongs_to :indicator
    has_one    :matrix, through: :indicator
    has_many   :user_ratings, as: :rateable
    has_many   :solutions


    def summary
       	(indicator.summary + '; Rep: ' + report.title).truncate(30, :omission => '')
    end

  
end
