class DropPostalInfo < ActiveRecord::Migration[5.2]
  def change
    drop_table :postal_info_ints
    drop_table :postal_infos
  end
end
