class CreateNetworkInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :network_informations do |t|
      t.string :ip_address
      t.string :ipv4_address
      t.string :ssid
      t.string :bssid

      t.timestamps
    end
  end
end
