class Favorite < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  def self.search_by_favorite(user_id)
    Favorite.where(user_id: user_id)
  end

  def self.is_exist?(alcohol_id, user_id)
    Favorite.where(alcohol_id: alcohol_id, user_id: user_id).first
  end
end
