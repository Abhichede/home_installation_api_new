class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.text :contract_summary
      t.string :signature
      t.integer :user_id

      t.timestamps
    end
  end
end
