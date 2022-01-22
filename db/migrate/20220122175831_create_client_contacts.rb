class CreateClientContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :client_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
