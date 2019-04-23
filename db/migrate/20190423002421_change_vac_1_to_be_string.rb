class ChangeVac1ToBeString < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs, :vac_1, :string
  end
end
