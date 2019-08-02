class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :i_d
      t.string :type_soldier
      t.string :color_team

      t.timestamps
    end
  end
end
