class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :kind
      t.integer :price

      t.timestamps null: false
    end
  end
end
