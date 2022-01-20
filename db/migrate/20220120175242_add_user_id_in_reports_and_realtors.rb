class AddUserIdInReportsAndRealtors < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :user_id, :integer
    add_column :realtors, :user_id, :integer
  end
end
