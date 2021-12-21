class CreateInspectors < ActiveRecord::Migration[5.2]
  def change
    create_table :inspectors do |t|
      t.string :first_name
      t.string :last_name
      t.string :enable_email
      t.string :enable_phone
      t.string :enable_schedule
      t.string :enable_add_to_template
      t.string :enable_edit_template
      t.string :enable_can_manage_constacts

      t.timestamps
    end
  end
end
