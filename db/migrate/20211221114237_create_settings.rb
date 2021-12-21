class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :day
      t.string :block
      t.integer :user_id

      t.timestamps
    end
  end
end
