class Tour < ApplicationRecord
  belongs_to :user
  belongs_to :guide

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 200 }
end
