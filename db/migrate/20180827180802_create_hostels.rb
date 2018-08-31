class CreateHostels < ActiveRecord::Migration[5.0]
  def change
    create_table :hostels do |t|
      t.string :name
      t.string :room
      t.string :address

      t.timestamps
    end
  end
end
