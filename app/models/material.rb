class Material < ApplicationRecord
  has_many :alcohols_materials
  has_many :alcohols, through: :alcohols_materials
end
