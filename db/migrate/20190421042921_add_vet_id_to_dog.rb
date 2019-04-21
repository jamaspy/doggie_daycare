class AddVetIdToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :vet_id, :integer
  end
end
