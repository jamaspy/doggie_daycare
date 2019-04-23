class ChangeVac2ToBeString < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs, :vac_2, :string
  end
end
