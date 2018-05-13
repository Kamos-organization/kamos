class Recommend < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  def self.search_by_recommend(user_id)
    Recommend.where(user_id: user_id)
  end
end
