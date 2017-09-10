class Song < ApplicationRecord

  belongs_to :artist
  validates :name, presence: true

  validates :lyrics, length: { maximum: 500 }, allow_blank: true
  validates :url, length: { maximum: 255 }, allow_blank: true

end
