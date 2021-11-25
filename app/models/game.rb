class Game < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :rating, dependent: :destroy
  has_one_attached :photo
end
