class CreateHostels < ActiveRecord::Migration[5.0]
  def change
    create_table :hostels do |t|
      t.string :product_id
      t.string :product_description
      t.string :product_name

      t.timestamps
    end
  end
end
