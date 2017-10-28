class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category_id, null: false
      t.integer :image_id
      t.string  :name,        null: false
      t.string  :description, null: false

      t.timestamps
    end
  end
end
