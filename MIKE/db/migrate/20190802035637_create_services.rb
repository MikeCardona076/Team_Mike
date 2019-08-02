class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :i_d
      t.text :service

      t.timestamps
    end
  end
end
