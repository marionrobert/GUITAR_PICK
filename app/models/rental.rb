class Rental < ApplicationRecord
  belongs_to :guitar
  belongs_to :user
end
