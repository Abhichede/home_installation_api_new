class CreateAgentContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :agent_contacts do |t|
      t.string :name
      t.string :agency
      t.string :client_agent
      t.string :seller_agent
      t.string :phone
      t.string :email
      t.string :city
      t.string :state
      t.string :country_string
      t.integer :user_id

      t.timestamps
    end
  end
end
