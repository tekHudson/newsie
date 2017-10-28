class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string  :name
      t.string  :bio
      t.integer :image_id

      t.timestamps
    end
  end
end
