class Recommend < ApplicationRecord
  belongs_to :alcohol
  belongs_to :user
end
