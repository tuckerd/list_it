class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantity
      t.string :product
      t.references :items

      t.timestamps
    end
    add_index :items, :items_id
  end
end
