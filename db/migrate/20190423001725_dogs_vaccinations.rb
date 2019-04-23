class DogsVaccinations < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs_vaccinations, :id => false do |t|
      t.integer :dog_id
      t.integer :vaccination_id
    end
  end
end
