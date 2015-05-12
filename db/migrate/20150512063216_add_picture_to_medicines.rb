class AddPictureToMedicines < ActiveRecord::Migration
  def change
    add_column :medicines, :picture, :string
  end
end
