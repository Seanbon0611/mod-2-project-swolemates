class Equipment < ApplicationRecord
  has_many :gym_equipments
  has_many :gyms, through: :gym_equipments
end
