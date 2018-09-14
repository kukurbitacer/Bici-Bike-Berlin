class Booking < ApplicationRecord
  belongs_to :tour

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Not a valid email" }
  validates :booking_date, presence: true
  validates :person_attending, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :bike_number, numericality: { only_integer: true, greater_than_or_equal_to: 0  }
end
