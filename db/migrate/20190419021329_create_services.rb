class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.text :name
      t.float :price
      t.integer :dog_id

      t.timestamps
    end
  end
end
