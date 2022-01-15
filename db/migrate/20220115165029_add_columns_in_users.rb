class AddColumnsInUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :country_of_residence, :string
    add_column :users, :your_address, :text
    add_column :users, :profile_photo, :text
    add_column :users, :profile_designation, :string
  end
end
