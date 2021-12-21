class CreateAutomationDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :automation_descriptions do |t|
      t.string :automation_id
      t.string :email_check
      t.string :text_check
      t.string :simple_check

      t.timestamps
    end
  end
end
