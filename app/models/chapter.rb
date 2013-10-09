class Chapter < ActiveRecord::Base

	include Averageable

	
    belongs_to :report
    belongs_to :indicator
    has_one    :matrix, through: :indicator
    has_many   :user_ratings, as: :rateable
    has_many   :solutions

    validates :report, :indicator, presence: true
    validates_associated  :report
    validates_associated  :indicator

    def summary
       	(indicator.summary + '; Rep: ' + report.title).truncate(30, :omission => '')
    end

  
end
