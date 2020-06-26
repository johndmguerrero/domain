class Order < ApplicationRecord
  # belongs_to :user
  has_one :domain
  has_one :payment_transactions
end
