class Solution < ActiveRecord::Base
  belongs_to :chapter
  has_many   :user_ratings, as: :rateable

end
