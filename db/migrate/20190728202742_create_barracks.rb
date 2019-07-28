class CreateBarracks < ActiveRecord::Migration[5.2]
  def change
    create_table :barracks do |t|
      t.integer :code_id
      t.string :name_barracks
      t.string :location

      t.timestamps
    end
  end
end
