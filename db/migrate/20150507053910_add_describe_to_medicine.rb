class AddDescribeToMedicine < ActiveRecord::Migration
  def change
  	add_column :medicines ,:describe ,:text
  end
end
