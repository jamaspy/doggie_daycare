class ChangeVacIdToVaccinationIdInDogsVaccinations < ActiveRecord::Migration[5.2]
  def change
    rename_column :dogs_vaccinations, :vac_id, :vaccination_id
  end
end
