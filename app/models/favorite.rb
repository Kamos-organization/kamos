class Favorite < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  def self.search_by_favorite(user_id)
    Favorite.where(user_id: user_id)
  end
end
