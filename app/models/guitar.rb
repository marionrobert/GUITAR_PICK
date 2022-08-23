class Guitar < ApplicationRecord
  BRANDS =  ["Fender", "Gibson"]
  CATEGORIES = ["Electric", "Acoustic", "Bass"]

  belongs_to :user
  has_many :rentals, dependent: :destroy
  validates :name, :description, :category, :location, :daily_price, presence: true
  validates :name, length: { minimum: 5 }
  validates :description, length: { minimum: 20 }
  validates :description, length: { maximum: 200 }
  validates :brand, inclusion: { in: BRANDS}
  validates :category, inclusion: { in: CATEGORIES}
end
