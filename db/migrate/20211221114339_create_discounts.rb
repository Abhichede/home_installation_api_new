class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.string :code
      t.string :type
      t.string :amount_percentage
      t.string :discription
      t.string :notes
      t.string :description
      t.string :applied_to_service
      t.string :applied_to_add_ons
      t.string :max_uses
      t.string :expiration_dates
      t.integer :user_id

      t.timestamps
    end
  end
end
