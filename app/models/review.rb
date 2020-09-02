class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, rand (1..5)
  validates :rating, presence: true
end
