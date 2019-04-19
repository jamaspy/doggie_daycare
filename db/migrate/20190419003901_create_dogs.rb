class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.text :name
      t.text :breed
      t.text :color 
      t.text :sex
      t.text :image
      t.date :vac_1
      t.date :vac_2
      t.date :flea
      t.date :worm
      t.integer :owner_id
      t.integer :service_id
      t.integer :vac_id

      t.timestamps
    end
  end
end
