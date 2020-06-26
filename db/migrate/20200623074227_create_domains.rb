class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|

      t.string :name
      t.string :period
      t.string :contacts
      t.belongs_to :user, index: true
      t.belongs_to :order, index: true
      t.timestamps

    end
  end
end
