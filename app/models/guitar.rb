class Guitar < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_one_attached :photo
  validates :name, :description, :category, :location, :daily_price, presence: true
  validates :name, length: { minimum: 5 }
  validates :description, length: { minimum: 20 }
  validates :description, length: { maximum: 200 }
end
