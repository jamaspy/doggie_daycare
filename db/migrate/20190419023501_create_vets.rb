class CreateVets < ActiveRecord::Migration[5.2]
  def change
    create_table :vets do |t|
      t.text :name
      t.text :phone
      t.text :address
      t.integer :dog_id
      t.integer :vac_id

      t.timestamps
    end
  end
end
