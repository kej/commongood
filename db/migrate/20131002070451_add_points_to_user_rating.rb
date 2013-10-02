class AddPointsToUserRating < ActiveRecord::Migration
  def change
    add_column :user_ratings, :points, :integer
  end
end
