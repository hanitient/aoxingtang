class AddIndexToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :user_id, :integer
  	add_index :orders, [:user_id, :created_at]
  end
end
