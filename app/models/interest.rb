class Interest < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  def self.search_by_interest(user_id)
    Interest.where(user_id: user_id)
  end

  def self.is_exist?(alchol_id, user_id)
    Interest.where(alchol_id, user_id)
  end
end
