class UserRating < ActiveRecord::Base
  belongs_to :user
  belongs_to :rating
  belongs_to :rateable, polymorphic: true

end
