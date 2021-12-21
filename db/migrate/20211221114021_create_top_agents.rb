class CreateTopAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :top_agents do |t|
      t.string :agent_name
      t.integer :user_id

      t.timestamps
    end
  end
end
