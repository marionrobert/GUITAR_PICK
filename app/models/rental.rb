class Rental < ApplicationRecord
  belongs_to :instrument_id
  belongs_to :user_id
end
