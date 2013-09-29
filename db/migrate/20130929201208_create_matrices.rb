class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.string :title

      t.timestamps
    end
  end
end
