class CreatePropertyUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :property_users do |t|
      t.boolean :favorite
      t.boolean :closed
      t.boolean :contacted
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
