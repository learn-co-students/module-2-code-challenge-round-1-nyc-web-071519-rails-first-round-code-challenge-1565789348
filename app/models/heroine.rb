class Heroine < ApplicationRecord
  has_one :power
  validates :name, uniqueness: true
  validates :super_name, uniqueness: true 
end
