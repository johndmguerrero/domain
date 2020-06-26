class Order < ApplicationRecord
  belongs_to :user
  has_one :domain
  has_one :transaction
end
