class CreatePostalInfoInts < ActiveRecord::Migration[5.2]
  def change
    create_table :postal_info_ints do |t|
      t.string "name"
      t.string "org"
      t.string "address"
      t.string "street"
      t.string "city"
      t.string "sp"
      t.string "pc"
      t.string "cc"
      t.timestamps
    end
  end
end
