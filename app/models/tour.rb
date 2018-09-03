class Tour < ApplicationRecord
  belongs_to :user
  belongs_to :guide

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 200 }
  mount_uploader :photo, PhotoUploader


  translates :name, :description, :location
  accepts_nested_attributes_for :translations, allow_destroy: true

  translation_class.validates :name, presence: true
  translation_class.validates :description, presence: true, length: { minimum: 200 }

end
