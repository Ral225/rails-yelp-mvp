class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :category, presence: true, inclusion: {in: CATEGORY}
  validates :adress, presence: true
  has_many :reviews, dependance: :destroy
end
