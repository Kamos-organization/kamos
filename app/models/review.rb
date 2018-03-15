class Review < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user
end
