class Artist < ApplicationRecord
  has_many :songs
  has_many :photos
  

  validates :name, length: { maximum: 50 }, presence: true
  validates :name, uniqueness: true

  validates :bio, length: { maximum: 500 }, allow_blank: true

end
