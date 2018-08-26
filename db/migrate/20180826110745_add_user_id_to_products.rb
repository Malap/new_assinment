class AddUserIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :user_id, :interger
  end
end
