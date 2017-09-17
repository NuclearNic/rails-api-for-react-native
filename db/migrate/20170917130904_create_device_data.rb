class CreateDeviceData < ActiveRecord::Migration[5.1]
  def change
    create_table :device_data do |t|
      t.string :device_id
      t.string :unique_id
      t.string :brand
      t.string :build_number
      t.string :bundle_id
      t.string :device_country
      t.string :device_locale
      t.string :device_name
      t.string :instance_id
      t.string :manufacturer
      t.string :model
      t.string :readable_version
      t.string :system_name
      t.string :system_version
      t.string :timezone
      t.string :user_agent
      t.string :version
      t.boolean :is_emulator
      t.boolean :is_tablet

      t.timestamps
    end
  end
end
