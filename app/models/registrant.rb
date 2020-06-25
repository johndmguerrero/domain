class Registrant < ApplicationRecord
  has_many :domains
  belongs_to :user
end
