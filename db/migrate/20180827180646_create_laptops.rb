class CreateLaptops < ActiveRecord::Migration[5.0]
  def change
    create_table :laptops do |t|
      t.string :model
      t.string :ram
      t.string :processor

      t.timestamps
    end
  end
end
