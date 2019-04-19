class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.text :name
      t.text :email
      t.text :mobile
      t.text :address

      t.timestamps
    end
  end
end
