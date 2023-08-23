class Picture < ApplicationRecord 
  validates :url, presence: true
  belongs_to :user
  has_and_belongs_to_many :tags

  has_one_attached :file
end