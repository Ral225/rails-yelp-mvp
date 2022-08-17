class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :address, presence: true
  validates :phone_number, presence: true
  has_many :reviews, dependent: :destroy
end
