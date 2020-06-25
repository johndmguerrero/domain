class RegistrantToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :registrants, :user, index: true
  end
end
