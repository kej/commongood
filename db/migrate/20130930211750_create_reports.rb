class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.string :document_url
      t.belongs_to :company, index: true
      t.text :industry
      t.float :staff

      t.timestamps
    end
  end
end
