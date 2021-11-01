class CreateZipcodes < ActiveRecord::Migration[5.2]
  def change
    create_table :zipcodes do |t|
      t.string :zipcode
      t.boolean :status

      t.timestamps
    end
  end
end
