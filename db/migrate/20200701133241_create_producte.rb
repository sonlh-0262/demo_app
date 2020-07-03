class CreateProducte < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :user_id, index: true
      t.timestamps
    end
  end
end
