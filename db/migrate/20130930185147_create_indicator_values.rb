class CreateIndicatorValues < ActiveRecord::Migration
  def change
    create_table :indicator_values do |t|
      t.belongs_to :indicator, index: true
      t.belongs_to :value, index: true

      t.timestamps
    end
  end
end
