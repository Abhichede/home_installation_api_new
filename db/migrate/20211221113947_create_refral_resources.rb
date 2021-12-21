class CreateRefralResources < ActiveRecord::Migration[5.2]
  def change
    create_table :refral_resources do |t|
      t.string :refral_resource_percentage
      t.integer :user_id

      t.timestamps
    end
  end
end
