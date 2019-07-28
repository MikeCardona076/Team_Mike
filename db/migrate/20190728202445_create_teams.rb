class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.string :type_soldier

      t.timestamps
    end
  end
end
