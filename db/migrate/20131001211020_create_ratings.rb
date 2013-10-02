class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :title
      t.float :ratio

      t.timestamps
    end
  end
end
