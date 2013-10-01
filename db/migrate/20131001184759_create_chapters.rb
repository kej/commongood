class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.belongs_to :report, index: true
      t.belongs_to :indicator, index: true

      t.timestamps
    end
  end
end
