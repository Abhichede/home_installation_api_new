class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :base_cost
      t.string :duration
      t.string :templates_id
      t.string :agreement_id
      t.integer :user_id

      t.timestamps
    end
  end
end
