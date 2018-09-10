class Guide < ApplicationRecord
  has_many :tours

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Not a valid email" }
  validates :phone, presence: true
  validates :photo, presence: true
  validates :small_description, presence: true

  translates :description, :small_description

  accepts_nested_attributes_for :translations, allow_destroy: true

  translation_class.validates :description, presence: true
  translation_class.validates :small_description, presence: true

end
