class Registrant < ApplicationRecord
  has_one :postal_info_int
  has_one :postal_info
  has_many :domains
end
