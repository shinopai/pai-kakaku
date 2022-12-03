class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :item, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true
      t.integer :price, null: false

      t.timestamps
    end
  end
end
