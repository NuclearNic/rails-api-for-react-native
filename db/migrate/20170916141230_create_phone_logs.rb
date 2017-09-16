class CreatePhoneLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_logs do |t|
      t.text :raw_data

      t.timestamps
    end
  end
end
