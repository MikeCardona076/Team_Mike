class CreateSoldiers < ActiveRecord::Migration[5.2]
  def change
    create_table :soldiers do |t|
      t.integer :id
      t.string :name
      t.string :grade

      t.timestamps
    end
  end
end
