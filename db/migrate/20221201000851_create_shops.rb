class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :tel, null: false
      t.text :comment
      t.integer :postage, null: false, default: 0
      t.integer :indication, null: false, default: 0

      t.timestamps
    end
  end
end
