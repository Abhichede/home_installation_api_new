class CreateAutomationSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :automation_saves do |t|
      t.integer :user_id
      t.string :automation_description_id

      t.timestamps
    end
  end
end
