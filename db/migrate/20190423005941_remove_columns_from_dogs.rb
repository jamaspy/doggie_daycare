class RemoveColumnsFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :vac_1
    remove_column :dogs, :vac_2
    remove_column :dogs, :vac_id
  end
end
