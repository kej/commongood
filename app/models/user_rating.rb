class UserRating < ActiveRecord::Base
  belongs_to :user
  belongs_to :rating
  belongs_to :rateable, polymorphic: true

  def calculated_ratio
    if points.blank?
    	return rating.ratio
    else
		max_points = rateable.indicator.max_points
		point_ratio = points.to_f / max_points.to_f
  	end
  end

end
