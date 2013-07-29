class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantity
      t.string :product
      t.references :list

      t.timestamps
    end
    add_index :items, :list_id
  end
end
