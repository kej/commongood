class Chapter < ActiveRecord::Base
  belongs_to :report
  belongs_to :indicator
  has_many   :user_ratings, as: :rateable
  
end
