class Review < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
end
