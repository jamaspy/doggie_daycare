class RemoveDogIdFromVaccinations < ActiveRecord::Migration[5.2]
  def change
    remove_column :vaccinations, :dog_id
  end
end
