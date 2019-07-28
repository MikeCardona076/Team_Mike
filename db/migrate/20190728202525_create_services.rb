class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :service_id
      t.text :activity

      t.timestamps
    end
  end
end
