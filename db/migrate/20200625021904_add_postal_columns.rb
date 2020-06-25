class AddPostalColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :registrants, :int_name, :string
    add_column :registrants, :int_org, :string
    add_column :registrants, :int_addr, :string
    add_column :registrants, :int_addr_st, :string
    add_column :registrants, :int_addr_cty, :string
    add_column :registrants, :int_addr_sp, :string
    add_column :registrants, :int_addr_pc, :string
    add_column :registrants, :int_addr_cc, :string
    add_column :registrants, :lcl_name, :string
    add_column :registrants, :lcl_org, :string
    add_column :registrants, :lcl_addr, :string
    add_column :registrants, :lcl_addr_st, :string
    add_column :registrants, :lcl_addr_cty, :string
    add_column :registrants, :lcl_addr_sp, :string
    add_column :registrants, :lcl_addr_pc, :string
    add_column :registrants, :lcl_addr_cc, :string
  end
end
