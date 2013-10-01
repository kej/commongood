class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :description
      t.belongs_to :chapter, index: true
      t.integer :order

      t.timestamps
    end
  end
end
