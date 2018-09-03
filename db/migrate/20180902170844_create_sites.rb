class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :party_id
      t.string :party
      t.string :coutry
      t.string :city
    end
  end
end
