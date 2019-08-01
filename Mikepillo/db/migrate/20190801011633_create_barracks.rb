class CreateBarracks < ActiveRecord::Migration[5.2]
  def change
    create_table :barracks do |t|
      t.integer :i_d
      t.string :name_barrack
      t.string :location

      t.timestamps
    end
  end
end
