class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|
      t.string :short
      t.string :title
      t.belongs_to :matrix, index: true
      t.integer :max_points

      t.timestamps
    end
  end
end
