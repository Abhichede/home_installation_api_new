class CreateUserCards < ActiveRecord::Migration[5.2]
  def change
    create_table :user_cards do |t|
      t.string :card_number
      t.string :card_type
      t.string :cvv
      t.string :expiry_date
      t.boolean :status
      t.integer :user_id

      t.timestamps
    end
  end
end
