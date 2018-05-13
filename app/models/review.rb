class Review < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :reviews_by_alcohol_id, ->(alcohol_id) {where(alcohol_id: alcohol_id)}
  scope :average_evaluation, ->(alcohol_id) {where(alcohol_id: alcohol_id).average(:evaluation)}
  scope :average_kire, ->(alcohol_id) {where(alcohol_id: alcohol_id).average(:kire)}
  scope :average_sweetness, ->(alcohol_id) {where(alcohol_id: alcohol_id).average(:sweetness)}
  scope :average_acidity, ->(alcohol_id) {where(alcohol_id: alcohol_id).average(:acidity)}
  scope :average_bitter, ->(alcohol_id) {where(alcohol_id: alcohol_id).average(:bitter)}
  scope :average_richness, ->(alcohol_id) {where(alcohol_id: alcohol_id).average(:richness)}
  scope :average_fragrance, ->(alcohol_id) {where(alcohol_id: alcohol_id).average(:fragrance)}

  # FIXME デザインやる時に合わせてやる
  # enum evaluation: {"全く気に入らない" => 1, "気に入らない" => 2, "普通" => 3, "気に入った" => 4, "とても気に入った" => 5}
end
