class History < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  def self.search_by_history(user_id)
    History.where(user_id: user_id)
  end
end
