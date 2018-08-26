class Guide < ApplicationRecord
  has_many :tours

  validates :name, presence: true
  validates :description, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Not a valid email" }
  validates :phone, presence: true

end
