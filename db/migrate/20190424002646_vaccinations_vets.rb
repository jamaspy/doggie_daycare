class VaccinationsVets < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccinations_vets, :id => false do |t|
      t.integer :vaccination_id
      t.integer :vet_id
    end
  end
end
