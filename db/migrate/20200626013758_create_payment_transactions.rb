class CreatePaymentTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_transactions do |t|
      t.string :payment_id
      t.belongs_to :order , index: true
      t.timestamps
    end
  end
end
