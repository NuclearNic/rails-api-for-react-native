class CreateGeolocations < ActiveRecord::Migration[5.1]
  def change
    create_table :geolocations do |t|
      t.string :latitude
      t.string :longitude
      t.string :error

      t.timestamps
    end
  end
end
