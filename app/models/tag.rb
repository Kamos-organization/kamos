class Tag < ApplicationRecord
  has_many :alcohols_tags
  has_many :alcohols, through: :alcohols_tags
end
