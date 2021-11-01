class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.integer :zipcode
      t.integer :country_code
      t.boolean :status

      t.timestamps
    end
  end
end