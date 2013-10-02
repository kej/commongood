class CreateUserRatings < ActiveRecord::Migration
  def change
    create_table :user_ratings do |t|
      t.belongs_to :user, index: true
      t.integer :rateable_id
      t.string :rateable_type
      t.belongs_to :rating, index: true

      t.timestamps
    end
  end
end
