class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.string :enable_completion_to_publish
      t.string :enable_cost_estimator
      t.integer :user_id

      t.timestamps
    end
  end
end
