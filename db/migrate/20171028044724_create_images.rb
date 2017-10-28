class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :article_id, default: nil
      t.integer :product_id, default: nil
      t.integer :staff_id, default: nil
      t.string  :url, null: false

      t.timestamps
    end
  end
end
