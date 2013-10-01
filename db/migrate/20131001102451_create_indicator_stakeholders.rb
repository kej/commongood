class CreateIndicatorStakeholders < ActiveRecord::Migration
  def change
    create_table :indicator_stakeholders do |t|
      t.belongs_to :indicator, index: true
      t.belongs_to :stakeholder, index: true

      t.timestamps
    end
  end
end
