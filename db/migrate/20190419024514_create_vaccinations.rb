class CreateVaccinations < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccinations do |t|
      t.text :name
      t.float :price
      t.integer :dog_id

      t.timestamps
    end
  end
end
