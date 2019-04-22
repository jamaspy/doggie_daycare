class DogsServices < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs_services, :id => false do |t|
      t.integer :dog_id
      t.integer :service_id
    end
  end
end
