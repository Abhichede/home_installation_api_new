class AddColumnsInAgentContact < ActiveRecord::Migration[5.2]
  def change
    rename_column :agent_contacts, :name, :first_name
    rename_column :agent_contacts, :agency, :agency_name
    add_column :agent_contacts, :last_name, :string
    add_column :agent_contacts, :second_email, :string
    add_column :agent_contacts, :second_phone, :string
    add_column :agent_contacts, :date_of_birth, :string
    add_column :agent_contacts, :agency_phone, :string
    add_column :agent_contacts, :image, :string
  end
end
