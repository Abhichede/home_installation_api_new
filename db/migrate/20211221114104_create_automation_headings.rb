class CreateAutomationHeadings < ActiveRecord::Migration[5.2]
  def change
    create_table :automation_headings do |t|
      t.string :heading_name
      t.boolean :status

      t.timestamps
    end
  end
end
