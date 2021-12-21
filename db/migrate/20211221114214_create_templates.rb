class CreateTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :templates do |t|
      t.string :template_name
      t.string :status

      t.timestamps
    end
  end
end
