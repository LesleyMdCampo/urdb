class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references  :movie
      t.string      :name
      t.string      :address
      t.string      :city
      t.string      :state

      t.timestamps
    end
  end
end
