class CreateStaffMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_members do |t|
      t.string :enable_schedule_new_inspection
      t.string :enable_publish_report
      t.string :enable_new_comment_to_template
      t.string :enable_edit_template
      t.string :enable_manage_template
      t.string :enable_access_financial_data
      t.string :enable_comapany_data
      t.integer :user_id

      t.timestamps
    end
  end
end
