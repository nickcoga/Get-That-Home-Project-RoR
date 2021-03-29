class Photo < ApplicationRecord
  belongs_to :property
  validates :name, presence: true
  validates :url, presence: true
end
