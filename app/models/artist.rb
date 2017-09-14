class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy


  validates :name, length: { maximum: 50 }, presence: true
  validates :name, uniqueness: true

  validates :bio, length: { maximum: 500 }, allow_blank: true

end
