class Interest < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  def self.search_by_interest(user_id)
    Interest.where(user_id: user_id)
  end

  def self.is_exist?(alcohol_id, user_id)
    Interest.where(alcohol_id: alcohol_id, user_id: user_id).first
  end
end
