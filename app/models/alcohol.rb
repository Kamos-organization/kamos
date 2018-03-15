class Alcohol < ApplicationRecord
  belongs_to :producing_area
  belongs_to :recipe
  belongs_to :category

  has_many :alcohols_materials
  has_many :alcohols_tags
  has_many :interests
  has_many :favorites
  has_many :recommends
  has_many :histories
  has_many :reviews
end
