class AddtokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :string, null: false, default: 'homeSeeker'
  end
end
