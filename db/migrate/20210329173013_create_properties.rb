class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :operation_type
      t.string :address
      t.string :phone
      t.decimal :price, precision: 7, scale:2
      t.string :property_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.decimal :area, precision: 7, scale:2
      t.boolean :pet
      t.string :description

      t.timestamps
    end
  end
end
