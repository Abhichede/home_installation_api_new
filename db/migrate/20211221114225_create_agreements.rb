class CreateAgreements < ActiveRecord::Migration[5.2]
  def change
    create_table :agreements do |t|
      t.string :agreement_name
      t.string :status

      t.timestamps
    end
  end
end
