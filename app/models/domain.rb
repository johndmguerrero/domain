class Domain < ApplicationRecord
  # belongs_to :user
  belongs_to :order
  has_one :contact
end
