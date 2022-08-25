class Guitar < ApplicationRecord
  BRANDS =  ["Fender", "Gibson", "Taylor", "Epiphone"]
  CATEGORIES = ["Electric", "Acoustic", "Bass"]

  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_one_attached :photo

  validates :name, :description, :category, :address, :daily_price, presence: true
  validates :name, length: { minimum: 5 }
  validates :description, length: { minimum: 20 }
  validates :description, length: { maximum: 200 }
  validates :brand, inclusion: { in: BRANDS}
  validates :category, inclusion: { in: CATEGORIES}

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
