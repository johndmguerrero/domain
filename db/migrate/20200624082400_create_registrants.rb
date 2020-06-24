class CreateRegistrants < ActiveRecord::Migration[5.2]
  def change
    create_table :registrants do |t|
      t.string "voice"
      t.string "fax"
      t.string "email"
      t.string "auth_info_password"
      t.timestamps
    end
  end
end
