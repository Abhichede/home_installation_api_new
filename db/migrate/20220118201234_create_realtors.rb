class CreateRealtors < ActiveRecord::Migration[5.2]
  def change
    create_table :realtors do |t|
      t.string :name
      t.string :type
      t.string :mobile_number
      t.string :email
      t.string :company_name
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
